.class public final Landroid/content/pm/SuspendDialogInfo$Builder;
.super Ljava/lang/Object;
.source "SuspendDialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/SuspendDialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDialogMessage:Ljava/lang/String;

.field private blacklist mDialogMessageResId:I

.field private blacklist mIconResId:I

.field private blacklist mNeutralButtonAction:I

.field private blacklist mNeutralButtonText:Ljava/lang/String;

.field private blacklist mNeutralButtonTextResId:I

.field private blacklist mTitle:Ljava/lang/String;

.field private blacklist mTitleResId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDialogMessage(Landroid/content/pm/SuspendDialogInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mDialogMessage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogMessageResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mDialogMessageResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mIconResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeutralButtonAction(Landroid/content/pm/SuspendDialogInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonAction:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeutralButtonText(Landroid/content/pm/SuspendDialogInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeutralButtonTextResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonTextResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/content/pm/SuspendDialogInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitleResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mTitleResId:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mDialogMessageResId:I

    .line 392
    iput v0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mTitleResId:I

    .line 394
    iput v0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mIconResId:I

    .line 395
    iput v0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonTextResId:I

    .line 397
    iput v0, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonAction:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/content/pm/SuspendDialogInfo;
    .registers 2

    .line 537
    new-instance v0, Landroid/content/pm/SuspendDialogInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/SuspendDialogInfo;-><init>(Landroid/content/pm/SuspendDialogInfo$Builder;)V

    return-object v0
.end method

.method public whitelist setIcon(I)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 4
    .param p1, "resId"    # I

    .line 407
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    const-string v1, "Invalid resource id provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 408
    iput p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mIconResId:I

    .line 409
    return-object p0
.end method

.method public whitelist setMessage(I)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 4
    .param p1, "resId"    # I

    .line 477
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    const-string v1, "Invalid resource id provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 478
    iput p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mDialogMessageResId:I

    .line 479
    return-object p0
.end method

.method public whitelist setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 456
    const-string v0, "Message cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 457
    iput-object p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mDialogMessage:Ljava/lang/String;

    .line 458
    return-object p0
.end method

.method public whitelist setNeutralButtonAction(I)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 4
    .param p1, "buttonAction"    # I

    .line 524
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    if-ne p1, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_7
    const-string v1, "Invalid button action"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 526
    iput p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonAction:I

    .line 527
    return-object p0
.end method

.method public whitelist setNeutralButtonText(I)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 4
    .param p1, "resId"    # I

    .line 493
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    const-string v1, "Invalid resource id provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 494
    iput p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonTextResId:I

    .line 495
    return-object p0
.end method

.method public whitelist setNeutralButtonText(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 3
    .param p1, "neutralButtonText"    # Ljava/lang/String;

    .line 508
    const-string v0, "Button text cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 510
    iput-object p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mNeutralButtonText:Ljava/lang/String;

    .line 511
    return-object p0
.end method

.method public whitelist setTitle(I)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 4
    .param p1, "resId"    # I

    .line 421
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    const-string v1, "Invalid resource id provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 422
    iput p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mTitleResId:I

    .line 423
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .line 436
    const-string v0, "Title cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 437
    iput-object p1, p0, Landroid/content/pm/SuspendDialogInfo$Builder;->mTitle:Ljava/lang/String;

    .line 438
    return-object p0
.end method
