.class public Landroid/app/Notification$CallStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$CallStyle$CallType;
    }
.end annotation


# static fields
.field public static final whitelist CALL_TYPE_INCOMING:I = 0x1

.field public static final whitelist CALL_TYPE_ONGOING:I = 0x2

.field public static final whitelist CALL_TYPE_SCREENING:I = 0x3

.field public static final whitelist CALL_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist DEBUG_NEW_ACTION_LAYOUT:Z = true

.field private static final blacklist KEY_ACTION_PRIORITY:Ljava/lang/String; = "key_action_priority"


# instance fields
.field private blacklist mAnswerButtonColor:Ljava/lang/Integer;

.field private blacklist mAnswerIntent:Landroid/app/PendingIntent;

.field private blacklist mCallType:I

.field private blacklist mDeclineButtonColor:Ljava/lang/Integer;

.field private blacklist mDeclineIntent:Landroid/app/PendingIntent;

.field private blacklist mHangUpIntent:Landroid/app/PendingIntent;

.field private blacklist mIsVideo:Z

.field private blacklist mPerson:Landroid/app/Person;

.field private blacklist mVerificationIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mVerificationText:Ljava/lang/CharSequence;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 10875
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 10876
    return-void
.end method

.method private constructor blacklist <init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "callType"    # I
    .param p2, "person"    # Landroid/app/Person;
    .param p3, "hangUpIntent"    # Landroid/app/PendingIntent;
    .param p4, "declineIntent"    # Landroid/app/PendingIntent;
    .param p5, "answerIntent"    # Landroid/app/PendingIntent;

    .line 10951
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 10952
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 10955
    iput p1, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    .line 10956
    iput-object p2, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    .line 10957
    iput-object p5, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    .line 10958
    iput-object p4, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    .line 10959
    iput-object p3, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    .line 10960
    return-void

    .line 10953
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "person must have a non-empty a name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist bindCallerVerification(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 10
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 11248
    const/4 v0, 0x0

    .line 11249
    .local v0, "iconContentDescription":Ljava/lang/String;
    const/4 v1, 0x1

    .line 11250
    .local v1, "showDivider":Z
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v5, 0x10205e8

    if-eqz v2, :cond_2e

    .line 11251
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 11252
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11253
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 11252
    invoke-virtual {p1, v5, v4, v2, v6}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 11254
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11255
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v2

    const v6, 0x10406ef

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 11257
    const/4 v1, 0x0

    goto :goto_31

    .line 11259
    :cond_2e
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11261
    :goto_31
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v6, 0x10205e9

    if-nez v2, :cond_4b

    .line 11262
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 11263
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, p1, v6, p2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 11264
    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11265
    const/4 v0, 0x0

    goto :goto_4f

    .line 11267
    :cond_4b
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11268
    const/4 v1, 0x0

    .line 11270
    :goto_4f
    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 11271
    const v2, 0x10205e7

    if-eqz v1, :cond_60

    .line 11272
    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11273
    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3, p1, v2, p2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_63

    .line 11275
    :cond_60
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11277
    :goto_63
    return-void
.end method

.method private blacklist fixTitleAndTextExtras(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 11325
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 11326
    .local v0, "sender":Ljava/lang/CharSequence;
    :goto_c
    if-eqz v0, :cond_13

    .line 11327
    const-string v1, "android.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 11329
    :cond_13
    const-string v1, "android.text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_22

    .line 11330
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->getDefaultText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 11332
    :cond_22
    return-void
.end method

.method public static whitelist forIncomingCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .registers 9
    .param p0, "person"    # Landroid/app/Person;
    .param p1, "declineIntent"    # Landroid/app/PendingIntent;
    .param p2, "answerIntent"    # Landroid/app/PendingIntent;

    .line 10892
    new-instance v0, Landroid/app/Notification$CallStyle;

    .line 10894
    const-string v1, "declineIntent is required"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/PendingIntent;

    .line 10895
    const-string v1, "answerIntent is required"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v2, p0

    .end local p0    # "person":Landroid/app/Person;
    .local v2, "person":Landroid/app/Person;
    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;-><init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 10892
    return-object v0
.end method

.method public static whitelist forOngoingCall(Landroid/app/Person;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .registers 8
    .param p0, "person"    # Landroid/app/Person;
    .param p1, "hangUpIntent"    # Landroid/app/PendingIntent;

    .line 10912
    new-instance v0, Landroid/app/Notification$CallStyle;

    .line 10913
    const-string/jumbo v1, "hangUpIntent is required"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    move-object v2, p0

    .end local p0    # "person":Landroid/app/Person;
    .local v2, "person":Landroid/app/Person;
    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;-><init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 10912
    return-object v0
.end method

.method public static whitelist forScreeningCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .registers 9
    .param p0, "person"    # Landroid/app/Person;
    .param p1, "hangUpIntent"    # Landroid/app/PendingIntent;
    .param p2, "answerIntent"    # Landroid/app/PendingIntent;

    .line 10934
    new-instance v0, Landroid/app/Notification$CallStyle;

    .line 10935
    const-string/jumbo v1, "hangUpIntent is required"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/PendingIntent;

    .line 10937
    const-string v1, "answerIntent is required"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/PendingIntent;

    const/4 v1, 0x3

    const/4 v4, 0x0

    move-object v2, p0

    .end local p0    # "person":Landroid/app/Person;
    .local v2, "person":Landroid/app/Person;
    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;-><init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 10934
    return-object v0
.end method

.method private blacklist getDefaultText()Ljava/lang/String;
    .registers 3

    .line 11281
    iget v0, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    packed-switch v0, :pswitch_data_32

    .line 11289
    const/4 v0, 0x0

    return-object v0

    .line 11287
    :pswitch_7
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10401ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11285
    :pswitch_15
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10401c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11283
    :pswitch_23
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10401c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_23
        :pswitch_15
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist isActionAddedByCallStyle(Landroid/app/Notification$Action;)Z
    .registers 4
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 11136
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_action_priority"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private blacklist makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;
    .registers 12
    .param p1, "icon"    # I
    .param p2, "title"    # I
    .param p3, "colorInt"    # Ljava/lang/Integer;
    .param p4, "defaultColorRes"    # I
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .line 11121
    if-eqz p3, :cond_a

    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$misCallActionColorCustomizable(Landroid/app/Notification$Builder;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 11122
    :cond_a
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 11124
    :cond_18
    new-instance v0, Landroid/app/Notification$Action$Builder;

    const-string v1, ""

    invoke-static {v1, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v3

    .line 11125
    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 11126
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 11125
    const/16 v5, 0x12

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-direct {v0, v1, v2, p5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 11128
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 11129
    .local v0, "action":Landroid/app/Notification$Action;
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key_action_priority"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11130
    return-object v0
.end method

.method private blacklist makeAnswerAction()Landroid/app/Notification$Action;
    .registers 8

    .line 11110
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_2b

    .line 11111
    :cond_6
    iget-boolean v0, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    if-eqz v0, :cond_e

    const v0, 0x10803d7

    goto :goto_11

    :cond_e
    const v0, 0x10803d6

    :goto_11
    move v2, v0

    .line 11112
    iget-boolean v0, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    if-eqz v0, :cond_1b

    const v0, 0x10401c5

    move v3, v0

    goto :goto_1f

    .line 11113
    :cond_1b
    const v0, 0x10401c4

    move v3, v0

    :goto_1f
    iget-object v4, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    .line 11110
    const v5, 0x106012c

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/Notification$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v0

    :goto_2b
    return-object v0
.end method

.method private blacklist makeCallLayout(I)Landroid/widget/RemoteViews;
    .registers 13
    .param p1, "viewType"    # I

    .line 11187
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 11188
    .local v0, "isCollapsed":Z
    :goto_9
    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    if-ne p1, v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    .line 11189
    .local v3, "isHeadsUp":Z
    :goto_10
    iget-object v4, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 11190
    .local v4, "extras":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    const/4 v6, 0x0

    if-eqz v5, :cond_24

    iget-object v5, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    invoke-virtual {v5}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_25

    :cond_24
    move-object v5, v6

    .line 11191
    .local v5, "title":Ljava/lang/CharSequence;
    :goto_25
    iget-object v7, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    const-string v8, "android.text"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 11192
    .local v7, "text":Ljava/lang/CharSequence;
    if-nez v7, :cond_37

    .line 11193
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->getDefaultText()Ljava/lang/String;

    move-result-object v7

    .line 11197
    :cond_37
    iget-object v8, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v8, v8, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v8}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v8

    .line 11198
    invoke-virtual {v8, p1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v8

    .line 11199
    invoke-virtual {v8, v2}, Landroid/app/Notification$StandardTemplateParams;->callStyleActions(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v8

    .line 11200
    invoke-virtual {v8, v2}, Landroid/app/Notification$StandardTemplateParams;->allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v8

    .line 11201
    invoke-virtual {v8, v2}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v8

    .line 11202
    invoke-virtual {v8, v2}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 11203
    invoke-virtual {v2, v0}, Landroid/app/Notification$StandardTemplateParams;->hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 11204
    invoke-virtual {v2, v5}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 11205
    invoke-virtual {v2, v7}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 11206
    .local v2, "p":Landroid/app/Notification$StandardTemplateParams;
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v8

    if-nez v8, :cond_77

    .line 11208
    const v8, 0x10202b6

    invoke-virtual {v2, v8}, Landroid/app/Notification$StandardTemplateParams;->titleViewId(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v8

    iget-object v9, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v10, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 11211
    invoke-static {v9, v10}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 11213
    :cond_77
    iget-object v8, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$CallStyle;->getActionsListWithSystemActions()Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 11215
    if-eqz v0, :cond_8f

    .line 11216
    iget-object v8, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v9, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11217
    invoke-static {v9}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedCallLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v9

    .line 11216
    invoke-static {v8, v9, v2, v6}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v6

    .local v6, "contentView":Landroid/widget/RemoteViews;
    goto :goto_b0

    .line 11218
    .end local v6    # "contentView":Landroid/widget/RemoteViews;
    :cond_8f
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v8

    if-eqz v8, :cond_a4

    if-eqz v3, :cond_a4

    .line 11219
    iget-object v8, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v9, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11220
    invoke-static {v9}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedCallLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v9

    .line 11219
    invoke-static {v8, v9, v2, v6}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v6

    .restart local v6    # "contentView":Landroid/widget/RemoteViews;
    goto :goto_b0

    .line 11222
    .end local v6    # "contentView":Landroid/widget/RemoteViews;
    :cond_a4
    iget-object v8, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v9, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11223
    invoke-static {v9}, Landroid/app/Notification$Builder;->-$$Nest$mgetExpandedCallLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v9

    .line 11222
    invoke-static {v8, v9, v2, v6}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 11227
    .restart local v6    # "contentView":Landroid/widget/RemoteViews;
    :goto_b0
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v8

    if-nez v8, :cond_c5

    iget-boolean v8, v2, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    if-nez v8, :cond_c5

    .line 11229
    iget-object v8, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v9, 0x1020218

    invoke-static {v8, v6, v9, v2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 11230
    invoke-virtual {v6, v9, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11232
    :cond_c5
    invoke-direct {p0, v6, v2}, Landroid/app/Notification$CallStyle;->bindCallerVerification(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 11235
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11236
    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$mgetSmallIconColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    .line 11235
    const v8, 0x1020553

    const-string/jumbo v9, "setLayoutColor"

    invoke-virtual {v6, v8, v9, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 11237
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 11238
    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    .line 11237
    const-string/jumbo v9, "setNotificationBackgroundColor"

    invoke-virtual {v6, v8, v9, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 11239
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string/jumbo v9, "setLargeIcon"

    invoke-virtual {v6, v8, v9, v1}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 11241
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "setData"

    invoke-virtual {v6, v8, v9, v1}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 11244
    return-object v6
.end method

.method private blacklist makeNegativeAction()Landroid/app/Notification$Action;
    .registers 8

    .line 11095
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_17

    .line 11096
    iget-object v4, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    const v5, 0x106012d

    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    const v2, 0x10803d8

    const v3, 0x10401c7

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/Notification$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0

    .line 11101
    :cond_17
    move-object v1, p0

    iget-object v4, v1, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    const v5, 0x106012d

    iget-object v6, v1, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    const v2, 0x10803d8

    const v3, 0x10401c6

    invoke-direct/range {v1 .. v6}, Landroid/app/Notification$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 11296
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 11297
    const-string v0, "android.callType"

    iget v1, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11298
    const-string v0, "android.callIsVideo"

    iget-boolean v1, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11299
    const-string v0, "android.callPerson"

    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11300
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_23

    .line 11301
    const-string v0, "android.verificationIcon"

    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11303
    :cond_23
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2e

    .line 11304
    const-string v0, "android.verificationText"

    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 11306
    :cond_2e
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_39

    .line 11307
    const-string v0, "android.answerIntent"

    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11309
    :cond_39
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_44

    .line 11310
    const-string v0, "android.declineIntent"

    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11312
    :cond_44
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4f

    .line 11313
    const-string v0, "android.hangUpIntent"

    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11315
    :cond_4f
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    if-eqz v0, :cond_5e

    .line 11316
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "android.answerColor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11318
    :cond_5e
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    if-eqz v0, :cond_6d

    .line 11319
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "android.declineColor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11321
    :cond_6d
    invoke-direct {p0, p1}, Landroid/app/Notification$CallStyle;->fixTitleAndTextExtras(Landroid/os/Bundle;)V

    .line 11322
    return-void
.end method

.method public blacklist areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 6
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 11367
    const/4 v0, 0x1

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_3c

    .line 11370
    :cond_e
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$CallStyle;

    .line 11371
    .local v1, "otherS":Landroid/app/Notification$CallStyle;
    iget v2, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/app/Notification$CallStyle;->mCallType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    iget-object v3, v1, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    .line 11372
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    iget-object v3, v1, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 11373
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v0, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    nop

    .line 11371
    :goto_3b
    return v0

    .line 11368
    .end local v1    # "otherS":Landroid/app/Notification$CallStyle;
    :cond_3c
    :goto_3c
    return v0
.end method

.method public blacklist buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 4
    .param p1, "wip"    # Landroid/app/Notification;

    .line 11017
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object p1

    .line 11019
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$CallStyle;->getActionsListWithSystemActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 11020
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/Notification$Action;

    iput-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 11021
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11022
    return-object p1
.end method

.method public blacklist displayCustomViewInline()Z
    .registers 2

    .line 11031
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getActionsListWithSystemActions()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 11148
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->makeNegativeAction()Landroid/app/Notification$Action;

    move-result-object v0

    .line 11149
    .local v0, "firstAction":Landroid/app/Notification$Action;
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->makeAnswerAction()Landroid/app/Notification$Action;

    move-result-object v1

    .line 11152
    .local v1, "lastAction":Landroid/app/Notification$Action;
    const/4 v2, 0x3

    .line 11153
    .local v2, "nonContextualActionSlotsRemaining":I
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 11156
    .local v3, "resultActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11157
    add-int/lit8 v2, v2, -0x1

    .line 11160
    iget-object v4, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_53

    .line 11161
    iget-object v4, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$Action;

    .line 11162
    .local v6, "action":Landroid/app/Notification$Action;
    invoke-virtual {v6}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 11164
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 11165
    :cond_3d
    invoke-direct {p0, v6}, Landroid/app/Notification$CallStyle;->isActionAddedByCallStyle(Landroid/app/Notification$Action;)Z

    move-result v7

    if-eqz v7, :cond_44

    goto :goto_49

    .line 11169
    :cond_44
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11170
    add-int/lit8 v2, v2, -0x1

    .line 11173
    :goto_49
    if-eqz v1, :cond_52

    if-ne v2, v5, :cond_52

    .line 11174
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11175
    add-int/lit8 v2, v2, -0x1

    .line 11177
    .end local v6    # "action":Landroid/app/Notification$Action;
    :cond_52
    goto :goto_27

    .line 11180
    :cond_53
    if-eqz v1, :cond_5a

    if-lt v2, v5, :cond_5a

    .line 11181
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11183
    :cond_5a
    return-object v3
.end method

.method public blacklist hasSummaryInHeader()Z
    .registers 2

    .line 11359
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist makeCompactHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 11083
    invoke-virtual {p0}, Landroid/app/Notification$CallStyle;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 11065
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    invoke-direct {p0, v0}, Landroid/app/Notification$CallStyle;->makeCallLayout(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeExpandedContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 11090
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    invoke-direct {p0, v0}, Landroid/app/Notification$CallStyle;->makeCallLayout(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 11073
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    invoke-direct {p0, v0}, Landroid/app/Notification$CallStyle;->makeCallLayout(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist purgeResources()V
    .registers 2

    .line 11039
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 11040
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_c

    .line 11041
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 11043
    :cond_c
    return-void
.end method

.method public blacklist reduceImageSizes(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 11050
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 11051
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_21

    .line 11052
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 11053
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 11054
    const v1, 0x10502e6

    goto :goto_18

    .line 11055
    :cond_15
    const v1, 0x10502e5

    .line 11052
    :goto_18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 11056
    .local v0, "rightIconSize":I
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 11058
    .end local v0    # "rightIconSize":I
    :cond_21
    return-void
.end method

.method protected blacklist restoreFromExtras(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 11339
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 11340
    const-string v0, "android.callType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    .line 11341
    const-string v0, "android.callIsVideo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    .line 11342
    const-string v0, "android.callPerson"

    const-class v1, Landroid/app/Person;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    .line 11343
    const-string v0, "android.verificationIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    .line 11344
    const-string v0, "android.verificationText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 11345
    const-string v0, "android.answerIntent"

    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    .line 11346
    const-string v0, "android.declineIntent"

    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    .line 11347
    const-string v0, "android.hangUpIntent"

    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    .line 11348
    const-string v0, "android.answerColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_69

    .line 11349
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6a

    :cond_69
    move-object v0, v2

    :goto_6a
    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    .line 11350
    const-string v0, "android.declineColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 11351
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_7e

    :cond_7d
    nop

    :goto_7e
    iput-object v2, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    .line 11352
    return-void
.end method

.method public whitelist setAnswerButtonColorHint(I)Landroid/app/Notification$CallStyle;
    .registers 3
    .param p1, "color"    # I

    .line 10999
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    .line 11000
    return-object p0
.end method

.method public whitelist setDeclineButtonColorHint(I)Landroid/app/Notification$CallStyle;
    .registers 3
    .param p1, "color"    # I

    .line 11010
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    .line 11011
    return-object p0
.end method

.method public whitelist setIsVideo(Z)Landroid/app/Notification$CallStyle;
    .registers 2
    .param p1, "isVideo"    # Z

    .line 10968
    iput-boolean p1, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    .line 10969
    return-object p0
.end method

.method public whitelist setVerificationIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$CallStyle;
    .registers 2
    .param p1, "verificationIcon"    # Landroid/graphics/drawable/Icon;

    .line 10978
    iput-object p1, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    .line 10979
    return-object p0
.end method

.method public whitelist setVerificationText(Ljava/lang/CharSequence;)Landroid/app/Notification$CallStyle;
    .registers 3
    .param p1, "verificationText"    # Ljava/lang/CharSequence;

    .line 10988
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 10989
    return-object p0
.end method
