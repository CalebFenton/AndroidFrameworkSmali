.class public Landroid/widget/RemoteViews$RemoteResponse;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$RemoteResponse$InteractionType;
    }
.end annotation


# static fields
.field public static final blacklist INTERACTION_TYPE_CHECKED_CHANGE:I = 0x1

.field public static final blacklist INTERACTION_TYPE_CLICK:I


# instance fields
.field private blacklist mElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFillIntent:Landroid/content/Intent;

.field private blacklist mInteractionType:I

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mViewIds:Landroid/util/IntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->handleViewInteraction(Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreadFromParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RemoteResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smfromPendingIntentTemplateAndFillInIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/RemoteViews$RemoteResponse;->fromPendingIntentTemplateAndFillInIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 9211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9228
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    return-void
.end method

.method public static whitelist fromFillInIntent(Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 2
    .param p0, "fillIntent"    # Landroid/content/Intent;

    .line 9273
    new-instance v0, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    .line 9274
    .local v0, "response":Landroid/widget/RemoteViews$RemoteResponse;
    iput-object p0, v0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    .line 9275
    if-eqz p0, :cond_c

    .line 9280
    invoke-virtual {p0}, Landroid/content/Intent;->collectExtraIntentKeys()V

    .line 9282
    :cond_c
    return-object v0
.end method

.method public static whitelist fromPendingIntent(Landroid/app/PendingIntent;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 2
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 9243
    new-instance v0, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    .line 9244
    .local v0, "response":Landroid/widget/RemoteViews$RemoteResponse;
    iput-object p0, v0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 9245
    return-object v0
.end method

.method private static blacklist fromPendingIntentTemplateAndFillInIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 3
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 9287
    new-instance v0, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    .line 9288
    .local v0, "response":Landroid/widget/RemoteViews$RemoteResponse;
    iput-object p0, v0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 9289
    iput-object p1, v0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    .line 9290
    invoke-virtual {p1}, Landroid/content/Intent;->collectExtraIntentKeys()V

    .line 9291
    return-object v0
.end method

.method private static blacklist getAdapterViewAncestor(Landroid/view/View;)Landroid/widget/AdapterView;
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation

    .line 9386
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 9388
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 9395
    .local v1, "parent":Landroid/view/View;
    :goto_a
    if-eqz v1, :cond_20

    instance-of v2, v1, Landroid/widget/AdapterView;

    if-nez v2, :cond_20

    instance-of v2, v1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_18

    instance-of v2, v1, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;

    if-eqz v2, :cond_20

    .line 9398
    :cond_18
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_a

    .line 9401
    :cond_20
    instance-of v2, v1, Landroid/widget/AdapterView;

    if-eqz v2, :cond_27

    move-object v0, v1

    check-cast v0, Landroid/widget/AdapterView;

    :cond_27
    return-object v0
.end method

.method private blacklist handleViewInteraction(Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 9354
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 9355
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .local v0, "pi":Landroid/app/PendingIntent;
    goto :goto_2f

    .line 9356
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_7
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    const-string v1, "RemoteViews"

    if-eqz v0, :cond_33

    .line 9357
    invoke-static {p1}, Landroid/widget/RemoteViews$RemoteResponse;->getAdapterViewAncestor(Landroid/view/View;)Landroid/widget/AdapterView;

    move-result-object v0

    .line 9358
    .local v0, "ancestor":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez v0, :cond_19

    .line 9359
    const-string v2, "Collection item doesn\'t have AdapterView parent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9360
    return-void

    .line 9364
    :cond_19
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/app/PendingIntent;

    if-nez v2, :cond_27

    .line 9365
    const-string v2, "Attempting setOnClickFillInIntent or setOnCheckedChangeFillInIntent without calling setPendingIntentTemplate on parent."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9368
    return-void

    .line 9371
    :cond_27
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    .line 9372
    .local v0, "pi":Landroid/app/PendingIntent;
    nop

    .line 9377
    :goto_2f
    invoke-interface {p2, p1, v0, p0}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    .line 9378
    return-void

    .line 9373
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_33
    const-string v0, "Response has neither pendingIntent nor fillInIntent"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9374
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 9342
    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 9343
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_17

    :cond_16
    move-object v0, v1

    :goto_17
    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    .line 9344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    .line 9345
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 9346
    .local v0, "viewIds":[I
    if-nez v0, :cond_26

    goto :goto_2a

    :cond_26
    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v1

    :goto_2a
    iput-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    .line 9347
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    .line 9348
    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 9331
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 9332
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9333
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    if-eqz v0, :cond_18

    .line 9334
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9336
    :cond_18
    iget v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9337
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-nez v0, :cond_23

    const/4 v0, 0x0

    goto :goto_29

    :cond_23
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    :goto_29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 9338
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 9339
    return-void
.end method


# virtual methods
.method public whitelist addSharedElement(ILjava/lang/String;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .line 9307
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-nez v0, :cond_12

    .line 9308
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    .line 9309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    .line 9311
    :cond_12
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 9312
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9313
    return-object p0
.end method

.method public blacklist getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/app/ActivityOptions;",
            ">;"
        }
    .end annotation

    .line 9406
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    if-nez v0, :cond_a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_11

    :cond_a
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 9407
    .local v0, "intent":Landroid/content/Intent;
    :goto_11
    invoke-static {p1}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 9409
    instance-of v1, p1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_2d

    iget v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    .line 9411
    move-object v1, p1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v2, "android.widget.extra.CHECKED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9414
    :cond_2d
    const/4 v1, 0x0

    .line 9416
    .local v1, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 9417
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110207

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const/high16 v4, 0x10000000

    if-eqz v3, :cond_6d

    .line 9419
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 9421
    .local v3, "windowStyle":Landroid/content/res/TypedArray;
    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 9423
    .local v5, "windowAnimations":I
    sget-object v7, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 9425
    .local v7, "windowAnimationStyle":Landroid/content/res/TypedArray;
    const/16 v8, 0x1a

    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 9427
    .local v8, "enterAnimationId":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 9428
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 9430
    if-eqz v8, :cond_6d

    .line 9431
    invoke-static {v2, v8, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 9433
    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    .line 9437
    .end local v3    # "windowStyle":Landroid/content/res/TypedArray;
    .end local v5    # "windowAnimations":I
    .end local v7    # "windowAnimationStyle":Landroid/content/res/TypedArray;
    .end local v8    # "enterAnimationId":I
    :cond_6d
    if-nez v1, :cond_ac

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-eqz v3, :cond_ac

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_ac

    .line 9438
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 9439
    .local v3, "parent":Landroid/view/View;
    :goto_7d
    if-eqz v3, :cond_8b

    instance-of v5, v3, Landroid/appwidget/AppWidgetHostView;

    if-nez v5, :cond_8b

    .line 9440
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/view/View;

    goto :goto_7d

    .line 9442
    :cond_8b
    instance-of v5, v3, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_ac

    .line 9443
    move-object v5, v3

    check-cast v5, Landroid/appwidget/AppWidgetHostView;

    iget-object v6, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    .line 9444
    invoke-virtual {v6}, Landroid/util/IntArray;->toArray()[I

    move-result-object v6

    iget-object v7, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    .line 9445
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 9443
    invoke-virtual {v5, v6, v7, v0}, Landroid/appwidget/AppWidgetHostView;->createSharedElementActivityOptions([I[Ljava/lang/String;Landroid/content/Intent;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 9449
    .end local v3    # "parent":Landroid/view/View;
    :cond_ac
    if-nez v1, :cond_b5

    .line 9450
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 9451
    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    .line 9453
    :cond_b5
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_c7

    .line 9454
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    goto :goto_d3

    .line 9457
    :cond_c7
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v4, "RemoteViews"

    const-string v5, "getLaunchOptions: view.getDisplay() is null!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9462
    :goto_d3
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 9464
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method public blacklist setInteractionType(I)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 2
    .param p1, "type"    # I

    .line 9326
    iput p1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    .line 9327
    return-object p0
.end method
