.class public final Landroid/service/autofill/FillResponse$Builder;
.super Ljava/lang/Object;
.source "FillResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAuthentication:Landroid/content/IntentSender;

.field private greylist-max-o mAuthenticationIds:[Landroid/view/autofill/AutofillId;

.field private blacklist mCancelIds:[I

.field private greylist-max-o mClientState:Landroid/os/Bundle;

.field private greylist-max-o mDatasets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDestroyed:Z

.field private blacklist mDetectedFieldTypes:[Landroid/service/assist/classification/FieldClassification;

.field private blacklist mDialogHeader:Landroid/widget/RemoteViews;

.field private blacklist mDialogPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mDialogPresentation:Landroid/widget/RemoteViews;

.field private greylist-max-o mDisableDuration:J

.field private greylist-max-o mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

.field private blacklist mFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mFooter:Landroid/widget/RemoteViews;

.field private greylist-max-o mHeader:Landroid/widget/RemoteViews;

.field private blacklist mIconResourceId:I

.field private greylist-max-o mIgnoredIds:[Landroid/view/autofill/AutofillId;

.field private blacklist mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private blacklist mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private greylist-max-o mPresentation:Landroid/widget/RemoteViews;

.field private greylist-max-o mSaveInfo:Landroid/service/autofill/SaveInfo;

.field private blacklist mServiceDisplayNameResourceId:I

.field private blacklist mShowFillDialogIcon:Z

.field private blacklist mShowSaveDialogIcon:Z

.field private blacklist mSupportsInlineSuggestions:Z

.field private blacklist mUserData:Landroid/service/autofill/UserData;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuthentication(Landroid/service/autofill/FillResponse$Builder;)Landroid/content/IntentSender;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthenticationIds(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCancelIds(Landroid/service/autofill/FillResponse$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mCancelIds:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientState(Landroid/service/autofill/FillResponse$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatasets(Landroid/service/autofill/FillResponse$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDetectedFieldTypes(Landroid/service/autofill/FillResponse$Builder;)[Landroid/service/assist/classification/FieldClassification;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mDetectedFieldTypes:[Landroid/service/assist/classification/FieldClassification;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogHeader(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mDialogHeader:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogPendingIntent(Landroid/service/autofill/FillResponse$Builder;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mDialogPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogPresentation(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisableDuration(Landroid/service/autofill/FillResponse$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDisableDuration:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldClassificationIds(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFillDialogTriggerIds(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/service/autofill/FillResponse$Builder;)I
    .registers 1

    iget p0, p0, Landroid/service/autofill/FillResponse$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFooter(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeader(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconResourceId(Landroid/service/autofill/FillResponse$Builder;)I
    .registers 1

    iget p0, p0, Landroid/service/autofill/FillResponse$Builder;->mIconResourceId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIgnoredIds(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlinePresentation(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/InlinePresentation;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlineTooltipPresentation(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/InlinePresentation;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPresentation(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSaveInfo(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/SaveInfo;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceDisplayNameResourceId(Landroid/service/autofill/FillResponse$Builder;)I
    .registers 1

    iget p0, p0, Landroid/service/autofill/FillResponse$Builder;->mServiceDisplayNameResourceId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowFillDialogIcon(Landroid/service/autofill/FillResponse$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/autofill/FillResponse$Builder;->mShowFillDialogIcon:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowSaveDialogIcon(Landroid/service/autofill/FillResponse$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/autofill/FillResponse$Builder;->mShowSaveDialogIcon:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportsInlineSuggestions(Landroid/service/autofill/FillResponse$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/autofill/FillResponse$Builder;->mSupportsInlineSuggestions:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserData(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/UserData;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillResponse$Builder;->mUserData:Landroid/service/autofill/UserData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAuthentication(Landroid/service/autofill/FillResponse$Builder;[Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/service/autofill/FillResponse$Builder;->setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/FillResponse$Builder;->mShowFillDialogIcon:Z

    .line 412
    iput-boolean v0, p0, Landroid/service/autofill/FillResponse$Builder;->mShowSaveDialogIcon:Z

    return-void
.end method

.method private blacklist setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .registers 10
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p2, "authentication"    # Landroid/content/IntentSender;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p5, "inlineTooltipPresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p6, "dialogPresentation"    # Landroid/widget/RemoteViews;

    .line 700
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 701
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 702
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    if-nez v0, :cond_37

    .line 706
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    if-nez p3, :cond_1a

    if-nez p4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    xor-int/2addr v0, v2

    if-nez v0, :cond_2f

    .line 710
    iput-object p2, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    .line 711
    iput-object p3, p0, Landroid/service/autofill/FillResponse$Builder;->mPresentation:Landroid/widget/RemoteViews;

    .line 712
    iput-object p4, p0, Landroid/service/autofill/FillResponse$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 713
    iput-object p5, p0, Landroid/service/autofill/FillResponse$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 714
    iput-object p6, p0, Landroid/service/autofill/FillResponse$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 715
    invoke-static {p1}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    .line 716
    return-object p0

    .line 707
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authentication and presentation (dropdown or inline), must be both non-null or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #setHeader() or #setFooter()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfAuthenticationCalled()V
    .registers 3

    .line 1174
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    if-nez v0, :cond_5

    .line 1177
    return-void

    .line 1175
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #setAuthentication()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfDestroyed()V
    .registers 3

    .line 1162
    iget-boolean v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 1165
    return-void

    .line 1163
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfDisableAutofillCalled()V
    .registers 5

    .line 1168
    iget-wide v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDisableDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    .line 1171
    return-void

    .line 1169
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #disableAutofill()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addDataset(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse$Builder;
    .registers 3
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;

    .line 750
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 751
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 752
    if-nez p1, :cond_9

    .line 753
    return-object p0

    .line 755
    :cond_9
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    .line 756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    .line 758
    :cond_14
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 759
    return-object p0

    .line 761
    :cond_1d
    return-object p0
.end method

.method public whitelist build()Landroid/service/autofill/FillResponse;
    .registers 5

    .line 1133
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 1134
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    if-nez v0, :cond_29

    iget-wide v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDisableDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    if-eqz v0, :cond_20

    goto :goto_29

    .line 1137
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need to provide: at least one DataSet, or a SaveInfo, or an authentication with a presentation, or a FieldsDetection, or a client state, or disable autofill"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    if-nez v0, :cond_36

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    if-nez v0, :cond_36

    goto :goto_3f

    .line 1142
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "must add at least 1 dataset when using header or footer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1146
    :cond_3f
    :goto_3f
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_62

    .line 1147
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    .line 1148
    .local v2, "dataset":Landroid/service/autofill/Dataset;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 1149
    iput-boolean v1, p0, Landroid/service/autofill/FillResponse$Builder;->mSupportsInlineSuggestions:Z

    .line 1150
    goto :goto_61

    .line 1152
    .end local v2    # "dataset":Landroid/service/autofill/Dataset;
    :cond_60
    goto :goto_4a

    :cond_61
    :goto_61
    goto :goto_68

    .line 1153
    :cond_62
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v0, :cond_68

    .line 1154
    iput-boolean v1, p0, Landroid/service/autofill/FillResponse$Builder;->mSupportsInlineSuggestions:Z

    .line 1157
    :cond_68
    :goto_68
    iput-boolean v1, p0, Landroid/service/autofill/FillResponse$Builder;->mDestroyed:Z

    .line 1158
    new-instance v0, Landroid/service/autofill/FillResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/FillResponse;-><init>(Landroid/service/autofill/FillResponse$Builder;Landroid/service/autofill/FillResponse-IA;)V

    return-object v0
.end method

.method public whitelist disableAutofill(J)Landroid/service/autofill/FillResponse$Builder;
    .registers 5
    .param p1, "duration"    # J

    .line 884
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 885
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_28

    .line 888
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    if-nez v0, :cond_20

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_20

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    if-nez v0, :cond_20

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    if-nez v0, :cond_20

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    if-nez v0, :cond_20

    .line 893
    iput-wide p1, p0, Landroid/service/autofill/FillResponse$Builder;->mDisableDuration:J

    .line 894
    return-object p0

    .line 890
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "disableAutofill() must be the only method called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/service/autofill/Presentations;)Landroid/service/autofill/FillResponse$Builder;
    .registers 11
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p2, "authentication"    # Landroid/content/IntentSender;
    .param p3, "presentations"    # Landroid/service/autofill/Presentations;

    .line 678
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 679
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 680
    if-nez p3, :cond_14

    .line 681
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "ids":[Landroid/view/autofill/AutofillId;
    .end local p2    # "authentication":Landroid/content/IntentSender;
    .local v1, "ids":[Landroid/view/autofill/AutofillId;
    .local v2, "authentication":Landroid/content/IntentSender;
    invoke-direct/range {v0 .. v6}, Landroid/service/autofill/FillResponse$Builder;->setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    move-result-object p1

    return-object p1

    .line 683
    .end local v1    # "ids":[Landroid/view/autofill/AutofillId;
    .end local v2    # "authentication":Landroid/content/IntentSender;
    .restart local p1    # "ids":[Landroid/view/autofill/AutofillId;
    .restart local p2    # "authentication":Landroid/content/IntentSender;
    :cond_14
    move-object v1, p1

    move-object v2, p2

    .line 684
    .end local p1    # "ids":[Landroid/view/autofill/AutofillId;
    .end local p2    # "authentication":Landroid/content/IntentSender;
    .restart local v1    # "ids":[Landroid/view/autofill/AutofillId;
    .restart local v2    # "authentication":Landroid/content/IntentSender;
    invoke-virtual {p3}, Landroid/service/autofill/Presentations;->getMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 685
    invoke-virtual {p3}, Landroid/service/autofill/Presentations;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v4

    .line 686
    invoke-virtual {p3}, Landroid/service/autofill/Presentations;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v5

    .line 687
    invoke-virtual {p3}, Landroid/service/autofill/Presentations;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v6

    .line 683
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/service/autofill/FillResponse$Builder;->setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .registers 7
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p2, "authentication"    # Landroid/content/IntentSender;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 516
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 517
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 518
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2f

    .line 522
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    if-nez p3, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    xor-int/2addr v0, v2

    if-nez v0, :cond_27

    .line 526
    iput-object p2, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    .line 527
    iput-object p3, p0, Landroid/service/autofill/FillResponse$Builder;->mPresentation:Landroid/widget/RemoteViews;

    .line 528
    invoke-static {p1}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    .line 529
    return-object p0

    .line 523
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authentication and presentation must be both non-null or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #setHeader() or #setFooter()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/FillResponse$Builder;
    .registers 11
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p2, "authentication"    # Landroid/content/IntentSender;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 580
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "ids":[Landroid/view/autofill/AutofillId;
    .end local p2    # "authentication":Landroid/content/IntentSender;
    .end local p3    # "presentation":Landroid/widget/RemoteViews;
    .end local p4    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .local v1, "ids":[Landroid/view/autofill/AutofillId;
    .local v2, "authentication":Landroid/content/IntentSender;
    .local v3, "presentation":Landroid/widget/RemoteViews;
    .local v4, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    invoke-virtual/range {v0 .. v5}, Landroid/service/autofill/FillResponse$Builder;->setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/FillResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/FillResponse$Builder;
    .registers 13
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p2, "authentication"    # Landroid/content/IntentSender;
    .param p3, "presentation"    # Landroid/widget/RemoteViews;
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p5, "inlineTooltipPresentation"    # Landroid/service/autofill/InlinePresentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 601
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 602
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 603
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "ids":[Landroid/view/autofill/AutofillId;
    .end local p2    # "authentication":Landroid/content/IntentSender;
    .end local p3    # "presentation":Landroid/widget/RemoteViews;
    .end local p4    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .end local p5    # "inlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    .local v1, "ids":[Landroid/view/autofill/AutofillId;
    .local v2, "authentication":Landroid/content/IntentSender;
    .local v3, "presentation":Landroid/widget/RemoteViews;
    .local v4, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .local v5, "inlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    invoke-direct/range {v0 .. v6}, Landroid/service/autofill/FillResponse$Builder;->setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setClientState(Landroid/os/Bundle;)Landroid/service/autofill/FillResponse$Builder;
    .registers 2
    .param p1, "clientState"    # Landroid/os/Bundle;

    .line 801
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 802
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 803
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    .line 804
    return-object p0
.end method

.method public blacklist setDatasets(Ljava/util/ArrayList;)Landroid/service/autofill/FillResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset;",
            ">;)",
            "Landroid/service/autofill/FillResponse$Builder;"
        }
    .end annotation

    .line 769
    .local p1, "dataset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/Dataset;>;"
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    .line 770
    return-object p0
.end method

.method public whitelist setDetectedFieldClassifications(Ljava/util/Set;)Landroid/service/autofill/FillResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/service/assist/classification/FieldClassification;",
            ">;)",
            "Landroid/service/autofill/FillResponse$Builder;"
        }
    .end annotation

    .line 431
    .local p1, "fieldInfos":Ljava/util/Set;, "Ljava/util/Set<Landroid/service/assist/classification/FieldClassification;>;"
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 432
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 433
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/assist/classification/FieldClassification;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/assist/classification/FieldClassification;

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDetectedFieldTypes:[Landroid/service/assist/classification/FieldClassification;

    .line 434
    return-object p0
.end method

.method public whitelist setDialogHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .registers 2
    .param p1, "header"    # Landroid/widget/RemoteViews;

    .line 1073
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 1074
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mDialogHeader:Landroid/widget/RemoteViews;

    .line 1076
    return-object p0
.end method

.method public blacklist setDialogPendingIntent(Landroid/app/PendingIntent;)Landroid/service/autofill/FillResponse$Builder;
    .registers 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 1107
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 1108
    const-string v0, "can\'t pass a null object to setDialogPendingIntent"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mDialogPendingIntent:Landroid/app/PendingIntent;

    .line 1111
    return-object p0
.end method

.method public varargs whitelist setFieldClassificationIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;
    .registers 6
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;

    .line 822
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 823
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 824
    const-string/jumbo v0, "ids"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 825
    array-length v0, p1

    .line 826
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v1

    .line 825
    const/4 v2, 0x1

    const-string/jumbo v3, "ids length"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 827
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    .line 828
    iget v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFlags:I

    .line 829
    return-object p0
.end method

.method public varargs whitelist setFillDialogTriggerIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;
    .registers 3
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;

    .line 1090
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 1091
    const-string/jumbo v0, "ids"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 1092
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    .line 1093
    return-object p0
.end method

.method public whitelist setFlags(I)Landroid/service/autofill/FillResponse$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 842
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 843
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFlags:I

    .line 847
    return-object p0
.end method

.method public whitelist setFooter(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .registers 3
    .param p1, "footer"    # Landroid/widget/RemoteViews;

    .line 1019
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 1020
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfAuthenticationCalled()V

    .line 1021
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    .line 1022
    return-object p0
.end method

.method public whitelist setHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .registers 3
    .param p1, "header"    # Landroid/widget/RemoteViews;

    .line 987
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 988
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfAuthenticationCalled()V

    .line 989
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    .line 990
    return-object p0
.end method

.method public whitelist setIconResourceId(I)Landroid/service/autofill/FillResponse$Builder;
    .registers 2
    .param p1, "id"    # I

    .line 908
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 910
    iput p1, p0, Landroid/service/autofill/FillResponse$Builder;->mIconResourceId:I

    .line 911
    return-object p0
.end method

.method public varargs whitelist setIgnoredIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;
    .registers 2
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;

    .line 729
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 730
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    .line 731
    return-object p0
.end method

.method public whitelist setPresentationCancelIds([I)Landroid/service/autofill/FillResponse$Builder;
    .registers 2
    .param p1, "ids"    # [I

    .line 1058
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 1059
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mCancelIds:[I

    .line 1060
    return-object p0
.end method

.method public whitelist setSaveInfo(Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse$Builder;
    .registers 2
    .param p1, "saveInfo"    # Landroid/service/autofill/SaveInfo;

    .line 779
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 780
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    .line 781
    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    .line 782
    return-object p0
.end method

.method public whitelist setServiceDisplayNameResourceId(I)Landroid/service/autofill/FillResponse$Builder;
    .registers 2
    .param p1, "id"    # I

    .line 925
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 927
    iput p1, p0, Landroid/service/autofill/FillResponse$Builder;->mServiceDisplayNameResourceId:I

    .line 928
    return-object p0
.end method

.method public whitelist setShowFillDialogIcon(Z)Landroid/service/autofill/FillResponse$Builder;
    .registers 2
    .param p1, "show"    # Z

    .line 940
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 942
    iput-boolean p1, p0, Landroid/service/autofill/FillResponse$Builder;->mShowFillDialogIcon:Z

    .line 943
    return-object p0
.end method

.method public whitelist setShowSaveDialogIcon(Z)Landroid/service/autofill/FillResponse$Builder;
    .registers 2
    .param p1, "show"    # Z

    .line 955
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 957
    iput-boolean p1, p0, Landroid/service/autofill/FillResponse$Builder;->mShowSaveDialogIcon:Z

    .line 958
    return-object p0
.end method

.method public whitelist setUserData(Landroid/service/autofill/UserData;)Landroid/service/autofill/FillResponse$Builder;
    .registers 3
    .param p1, "userData"    # Landroid/service/autofill/UserData;

    .line 1038
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    .line 1039
    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfAuthenticationCalled()V

    .line 1040
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/UserData;

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mUserData:Landroid/service/autofill/UserData;

    .line 1041
    return-object p0
.end method
