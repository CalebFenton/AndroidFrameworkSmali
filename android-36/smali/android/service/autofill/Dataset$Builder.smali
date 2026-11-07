.class public final Landroid/service/autofill/Dataset$Builder;
.super Ljava/lang/Object;
.source "Dataset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAuthentication:Landroid/content/IntentSender;

.field private blacklist mAutofillDatatypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCredentialFillInIntent:Landroid/content/Intent;

.field private greylist-max-o mDestroyed:Z

.field private blacklist mDialogPresentation:Landroid/widget/RemoteViews;

.field private blacklist mFieldContent:Landroid/content/ClipData;

.field private blacklist mFieldDialogPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFieldFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset$DatasetFieldFilter;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFieldInlinePresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFieldInlineTooltipPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFieldPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFieldToIndexdMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/service/autofill/Field;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFieldValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mId:Ljava/lang/String;

.field private blacklist mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private blacklist mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private greylist-max-o mPresentation:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuthentication(Landroid/service/autofill/Dataset$Builder;)Landroid/content/IntentSender;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mAuthentication:Landroid/content/IntentSender;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutofillDatatypes(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCredentialFillInIntent(Landroid/service/autofill/Dataset$Builder;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mCredentialFillInIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldContent(Landroid/service/autofill/Dataset$Builder;)Landroid/content/ClipData;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldContent:Landroid/content/ClipData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldDialogPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldFilters(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldIds(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldInlinePresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldInlineTooltipPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldValues(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/service/autofill/Dataset$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlinePresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/service/autofill/InlinePresentation;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlineTooltipPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/service/autofill/InlinePresentation;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateFromParcel(Landroid/service/autofill/Dataset$Builder;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Landroid/service/autofill/Dataset$Builder;->createFromParcel(Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    .line 492
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    .line 545
    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/autofill/InlinePresentation;)V
    .registers 3
    .param p1, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    .line 492
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    .line 520
    const-string/jumbo v0, "inlinePresentation must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 521
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 522
    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/autofill/Presentations;)V
    .registers 3
    .param p1, "presentations"    # Landroid/service/autofill/Presentations;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    .line 492
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    .line 530
    const-string/jumbo v0, "presentations must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 532
    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    .line 533
    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 534
    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 535
    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 536
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews;)V
    .registers 3
    .param p1, "presentation"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    .line 492
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    .line 502
    const-string/jumbo v0, "presentation must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 503
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    .line 504
    return-void
.end method

.method private blacklist createFromParcel(Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V
    .registers 11
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "datatype"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .param p4, "presentation"    # Landroid/widget/RemoteViews;
    .param p5, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p6, "tooltip"    # Landroid/service/autofill/InlinePresentation;
    .param p7, "filter"    # Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .param p8, "dialogPresentation"    # Landroid/widget/RemoteViews;

    .line 1319
    if-eqz p1, :cond_29

    .line 1320
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1321
    .local v0, "existingIdx":I
    if-ltz v0, :cond_29

    .line 1322
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1323
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1324
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1325
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1326
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1327
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1328
    return-void

    .line 1331
    .end local v0    # "existingIdx":I
    :cond_29
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    return-void
.end method

.method private blacklist setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I
    .registers 11
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p5, "tooltip"    # Landroid/service/autofill/InlinePresentation;
    .param p6, "filter"    # Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .param p7, "dialogPresentation"    # Landroid/widget/RemoteViews;

    .line 1290
    const-string/jumbo v0, "id cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1291
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1292
    .local v0, "existingIdx":I
    if-ltz v0, :cond_2d

    .line 1293
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1294
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1295
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1296
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1297
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1298
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1299
    return v0

    .line 1301
    :cond_2d
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private blacklist setLifeTheUniverseAndEverything(Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I
    .registers 11
    .param p1, "datatype"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p5, "tooltip"    # Landroid/service/autofill/InlinePresentation;
    .param p6, "filter"    # Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .param p7, "dialogPresentation"    # Landroid/widget/RemoteViews;

    .line 1260
    const-string v0, "datatype cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1261
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1262
    .local v0, "existingIdx":I
    if-ltz v0, :cond_31

    .line 1263
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1265
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1266
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1267
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1268
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1269
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1270
    return v0

    .line 1272
    :cond_31
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private greylist-max-o throwIfDestroyed()V
    .registers 3

    .line 1377
    iget-boolean v0, p0, Landroid/service/autofill/Dataset$Builder;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 1380
    return-void

    .line 1378
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/autofill/Dataset;
    .registers 4

    .line 1353
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 1354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/Dataset$Builder;->mDestroyed:Z

    .line 1355
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    const-string v2, "at least one of field or datatype must be set"

    if-nez v1, :cond_17

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    goto :goto_17

    .line 1356
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :cond_17
    :goto_17
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_36

    .line 1359
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_36

    .line 1360
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1364
    :cond_36
    :goto_36
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldContent:Landroid/content/ClipData;

    if-eqz v1, :cond_5d

    .line 1365
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_54

    .line 1369
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4c

    goto :goto_5d

    .line 1370
    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot fill both content and values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1366
    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "when filling content, only one field can be filled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1373
    :cond_5d
    :goto_5d
    new-instance v0, Landroid/service/autofill/Dataset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/Dataset;-><init>(Landroid/service/autofill/Dataset$Builder;Landroid/service/autofill/Dataset-IA;)V

    return-object v0
.end method

.method public whitelist setAuthentication(Landroid/content/IntentSender;)Landroid/service/autofill/Dataset$Builder;
    .registers 2
    .param p1, "authentication"    # Landroid/content/IntentSender;

    .line 646
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 647
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mAuthentication:Landroid/content/IntentSender;

    .line 648
    return-object p0
.end method

.method public whitelist setContent(Landroid/view/autofill/AutofillId;Landroid/content/ClipData;)Landroid/service/autofill/Dataset$Builder;
    .registers 12
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "content"    # Landroid/content/ClipData;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 731
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 732
    if-eqz p2, :cond_32

    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 734
    invoke-virtual {p2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content items cannot contain an Intent: content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 738
    .end local v0    # "i":I
    :cond_32
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "id":Landroid/view/autofill/AutofillId;
    .local v2, "id":Landroid/view/autofill/AutofillId;
    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    .line 739
    iput-object p2, v1, Landroid/service/autofill/Dataset$Builder;->mFieldContent:Landroid/content/ClipData;

    .line 740
    return-object v1
.end method

.method public blacklist setCredentialFillInIntent(Landroid/content/Intent;)Landroid/service/autofill/Dataset$Builder;
    .registers 2
    .param p1, "credentialFillInIntent"    # Landroid/content/Intent;

    .line 665
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 666
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mCredentialFillInIntent:Landroid/content/Intent;

    .line 667
    return-object p0
.end method

.method public whitelist setField(Landroid/view/autofill/AutofillId;Landroid/service/autofill/Field;)Landroid/service/autofill/Dataset$Builder;
    .registers 13
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "field"    # Landroid/service/autofill/Field;

    .line 1112
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 1114
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1115
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1116
    .local v0, "index":I
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 1117
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1118
    return-object p0

    .line 1124
    .end local v0    # "index":I
    :cond_25
    if-nez p2, :cond_36

    .line 1125
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "id":Landroid/view/autofill/AutofillId;
    .local v3, "id":Landroid/view/autofill/AutofillId;
    invoke-direct/range {v2 .. v9}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    move-result p1

    move-object v0, p0

    move-object v1, v3

    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    .local v1, "id":Landroid/view/autofill/AutofillId;
    .local p1, "index":I
    goto :goto_6a

    .line 1127
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .local p1, "id":Landroid/view/autofill/AutofillId;
    :cond_36
    move-object v1, p1

    .end local p1    # "id":Landroid/view/autofill/AutofillId;
    .restart local v1    # "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/service/autofill/Field;->getDatasetFieldFilter()Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v6

    .line 1128
    .local v6, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    invoke-virtual {p2}, Landroid/service/autofill/Field;->getPresentations()Landroid/service/autofill/Presentations;

    move-result-object p1

    .line 1129
    .local p1, "presentations":Landroid/service/autofill/Presentations;
    if-nez p1, :cond_50

    .line 1130
    invoke-virtual {p2}, Landroid/service/autofill/Field;->getValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    move-result v2

    move p1, v2

    .local v2, "index":I
    goto :goto_6a

    .line 1133
    .end local v2    # "index":I
    :cond_50
    invoke-virtual {p2}, Landroid/service/autofill/Field;->getValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 1134
    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 1135
    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v4

    .line 1136
    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v5

    .line 1137
    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v7

    .line 1133
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    move-result v2

    move p1, v2

    .line 1140
    .end local v6    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .local p1, "index":I
    :goto_6a
    iget-object v2, v0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    return-object v0
.end method

.method public whitelist setField(Ljava/lang/String;Landroid/service/autofill/Field;)Landroid/service/autofill/Dataset$Builder;
    .registers 13
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "field"    # Landroid/service/autofill/Field;

    .line 1170
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 1172
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1173
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1174
    .local v0, "index":I
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 1175
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1176
    return-object p0

    .line 1182
    .end local v0    # "index":I
    :cond_25
    invoke-virtual {p2}, Landroid/service/autofill/Field;->getDatasetFieldFilter()Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v8

    .line 1183
    .local v8, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    invoke-virtual {p2}, Landroid/service/autofill/Field;->getPresentations()Landroid/service/autofill/Presentations;

    move-result-object v0

    .line 1184
    .local v0, "presentations":Landroid/service/autofill/Presentations;
    if-nez v0, :cond_3e

    .line 1185
    invoke-virtual {p2}, Landroid/service/autofill/Field;->getValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "hint":Ljava/lang/String;
    .local v3, "hint":Ljava/lang/String;
    invoke-direct/range {v2 .. v9}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    move-result p1

    .local p1, "index":I
    goto :goto_58

    .line 1188
    .end local v3    # "hint":Ljava/lang/String;
    .local p1, "hint":Ljava/lang/String;
    :cond_3e
    move-object v3, p1

    .end local p1    # "hint":Ljava/lang/String;
    .restart local v3    # "hint":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/autofill/Field;->getValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 1189
    invoke-virtual {v0}, Landroid/service/autofill/Presentations;->getMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v5

    .line 1190
    invoke-virtual {v0}, Landroid/service/autofill/Presentations;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    .line 1191
    invoke-virtual {v0}, Landroid/service/autofill/Presentations;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v7

    .line 1192
    invoke-virtual {v0}, Landroid/service/autofill/Presentations;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v9

    .line 1188
    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    move-result p1

    .line 1194
    .local p1, "index":I
    :goto_58
    iget-object v1, v2, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    return-object v2
.end method

.method public whitelist setFieldForAllHints(Landroid/service/autofill/Field;)Landroid/service/autofill/Dataset$Builder;
    .registers 3
    .param p1, "field"    # Landroid/service/autofill/Field;

    .line 1212
    const-string v0, "any"

    invoke-virtual {p0, v0, p1}, Landroid/service/autofill/Dataset$Builder;->setField(Ljava/lang/String;Landroid/service/autofill/Field;)Landroid/service/autofill/Dataset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFieldInlinePresentation(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .registers 14
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "filter"    # Ljava/util/regex/Pattern;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1245
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 1246
    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1247
    new-instance v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v7, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .end local p1    # "id":Landroid/view/autofill/AutofillId;
    .end local p2    # "value":Landroid/view/autofill/AutofillValue;
    .end local p4    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .local v2, "id":Landroid/view/autofill/AutofillId;
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    .local v5, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    .line 1249
    return-object v1
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 692
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 693
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mId:Ljava/lang/String;

    .line 694
    return-object p0
.end method

.method public whitelist setInlinePresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .registers 3
    .param p1, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 559
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 560
    const-string/jumbo v0, "inlinePresentation must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 561
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 562
    return-object p0
.end method

.method public whitelist setInlinePresentation(Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .registers 4
    .param p1, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p2, "inlineTooltipPresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 583
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 584
    const-string/jumbo v0, "inlinePresentation must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 585
    const-string/jumbo v0, "inlineTooltipPresentation must be non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 587
    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 588
    iput-object p2, p0, Landroid/service/autofill/Dataset$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 589
    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/service/autofill/Dataset$Builder;
    .registers 11
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 772
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 773
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "id":Landroid/view/autofill/AutofillId;
    .end local p2    # "value":Landroid/view/autofill/AutofillValue;
    .local v1, "id":Landroid/view/autofill/AutofillId;
    .local v2, "value":Landroid/view/autofill/AutofillValue;
    invoke-direct/range {v0 .. v7}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    .line 774
    return-object v0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;)Landroid/service/autofill/Dataset$Builder;
    .registers 13
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 803
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 804
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 805
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "id":Landroid/view/autofill/AutofillId;
    .end local p2    # "value":Landroid/view/autofill/AutofillValue;
    .end local p3    # "presentation":Landroid/widget/RemoteViews;
    .local v2, "id":Landroid/view/autofill/AutofillId;
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    .local v4, "presentation":Landroid/widget/RemoteViews;
    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    .line 806
    return-object v1
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .registers 14
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 914
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 915
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 916
    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 917
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "id":Landroid/view/autofill/AutofillId;
    .end local p2    # "value":Landroid/view/autofill/AutofillValue;
    .end local p3    # "presentation":Landroid/widget/RemoteViews;
    .end local p4    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .local v2, "id":Landroid/view/autofill/AutofillId;
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    .local v4, "presentation":Landroid/widget/RemoteViews;
    .local v5, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    .line 919
    return-object v1
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .registers 15
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p5, "inlineTooltipPresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 949
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 950
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 951
    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 952
    const-string/jumbo v0, "inlineTooltipPresentation cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 954
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "id":Landroid/view/autofill/AutofillId;
    .end local p2    # "value":Landroid/view/autofill/AutofillValue;
    .end local p3    # "presentation":Landroid/widget/RemoteViews;
    .end local p4    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .end local p5    # "inlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    .local v2, "id":Landroid/view/autofill/AutofillId;
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    .local v4, "presentation":Landroid/widget/RemoteViews;
    .local v5, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .local v6, "inlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    .line 956
    return-object v1
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;)Landroid/service/autofill/Dataset$Builder;
    .registers 14
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "filter"    # Ljava/util/regex/Pattern;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 841
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "Dataset presentation not set on constructor"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 843
    new-instance v8, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v8, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "id":Landroid/view/autofill/AutofillId;
    .end local p2    # "value":Landroid/view/autofill/AutofillValue;
    .local v3, "id":Landroid/view/autofill/AutofillId;
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    invoke-direct/range {v2 .. v9}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    .line 845
    return-object v2
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;Landroid/widget/RemoteViews;)Landroid/service/autofill/Dataset$Builder;
    .registers 14
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "filter"    # Ljava/util/regex/Pattern;
    .param p4, "presentation"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 881
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 882
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 883
    new-instance v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v7, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    .end local p1    # "id":Landroid/view/autofill/AutofillId;
    .end local p2    # "value":Landroid/view/autofill/AutofillValue;
    .end local p4    # "presentation":Landroid/widget/RemoteViews;
    .local v2, "id":Landroid/view/autofill/AutofillId;
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    .local v4, "presentation":Landroid/widget/RemoteViews;
    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    .line 885
    return-object v1
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .registers 15
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "filter"    # Ljava/util/regex/Pattern;
    .param p4, "presentation"    # Landroid/widget/RemoteViews;
    .param p5, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 997
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 998
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 999
    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1000
    new-instance v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v7, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "id":Landroid/view/autofill/AutofillId;
    .end local p2    # "value":Landroid/view/autofill/AutofillValue;
    .end local p4    # "presentation":Landroid/widget/RemoteViews;
    .end local p5    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .local v2, "id":Landroid/view/autofill/AutofillId;
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    .local v4, "presentation":Landroid/widget/RemoteViews;
    .local v5, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    .line 1002
    return-object v1
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .registers 16
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "filter"    # Ljava/util/regex/Pattern;
    .param p4, "presentation"    # Landroid/widget/RemoteViews;
    .param p5, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p6, "inlineTooltipPresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1038
    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    .line 1039
    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1040
    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1041
    const-string/jumbo v0, "inlineTooltipPresentation cannot be null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1043
    new-instance v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v7, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "id":Landroid/view/autofill/AutofillId;
    .end local p2    # "value":Landroid/view/autofill/AutofillValue;
    .end local p4    # "presentation":Landroid/widget/RemoteViews;
    .end local p5    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .end local p6    # "inlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    .local v2, "id":Landroid/view/autofill/AutofillId;
    .local v3, "value":Landroid/view/autofill/AutofillValue;
    .local v4, "presentation":Landroid/widget/RemoteViews;
    .local v5, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .local v6, "inlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    .line 1045
    return-object v1
.end method
