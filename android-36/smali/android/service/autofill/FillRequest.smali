.class public final Landroid/service/autofill/FillRequest;
.super Ljava/lang/Object;
.source "FillRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FillRequest$RequestFlags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/FillRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_COMPATIBILITY_MODE_REQUEST:I = 0x2

.field public static final blacklist FLAG_IME_SHOWING:I = 0x80

.field public static final whitelist FLAG_MANUAL_REQUEST:I = 0x1

.field public static final blacklist FLAG_PASSWORD_INPUT_TYPE:I = 0x4

.field public static final blacklist FLAG_PCC_DETECTION:I = 0x200

.field public static final blacklist FLAG_RESET_FILL_DIALOG_STATE:I = 0x100

.field public static final blacklist FLAG_SCREEN_HAS_CREDMAN_FIELD:I = 0x400

.field public static final whitelist FLAG_SUPPORTS_FILL_DIALOG:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_VIEW_NOT_FOCUSED:I = 0x10

.field public static final blacklist FLAG_VIEW_REQUESTS_CREDMAN_SERVICE:I = 0x800

.field public static final greylist-max-o INVALID_REQUEST_ID:I = -0x80000000


# instance fields
.field private final greylist-max-o mClientState:Landroid/os/Bundle;

.field private final blacklist mDelayedFillIntentSender:Landroid/content/IntentSender;

.field private final blacklist mFillContexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFlags:I

.field private final blacklist mHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mId:I

.field private final blacklist mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 585
    new-instance v0, Landroid/service/autofill/FillRequest$1;

    invoke-direct {v0}, Landroid/service/autofill/FillRequest$1;-><init>()V

    sput-object v0, Landroid/service/autofill/FillRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/content/IntentSender;)V
    .registers 11
    .param p1, "id"    # I
    .param p4, "clientState"    # Landroid/os/Bundle;
    .param p5, "flags"    # I
    .param p6, "inlineSuggestionsRequest"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p7, "delayedFillIntentSender"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/service/autofill/FillContext;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "I",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 367
    .local p2, "fillContexts":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/FillContext;>;"
    .local p3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput p1, p0, Landroid/service/autofill/FillRequest;->mId:I

    .line 369
    iput-object p2, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    .line 370
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 372
    iput-object p3, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    .line 373
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 375
    iput-object p4, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    .line 376
    iput p5, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    .line 378
    iget v0, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    const/16 v1, 0xfd7

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 390
    iput-object p6, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 391
    iput-object p7, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    .line 393
    invoke-direct {p0}, Landroid/service/autofill/FillRequest;->onConstructed()V

    .line 394
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 546
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 547
    .local v1, "id":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v2, "fillContexts":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/FillContext;>;"
    const-class v3, Landroid/service/autofill/FillContext;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 549
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 551
    and-int/lit8 v4, v0, 0x8

    const/4 v5, 0x0

    if-nez v4, :cond_28

    move-object v4, v5

    goto :goto_2c

    :cond_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 552
    .local v4, "clientState":Landroid/os/Bundle;
    :goto_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 553
    .local v6, "flags":I
    and-int/lit8 v7, v0, 0x20

    if-nez v7, :cond_36

    move-object v7, v5

    goto :goto_3e

    :cond_36
    sget-object v7, Landroid/view/inputmethod/InlineSuggestionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 554
    .local v7, "inlineSuggestionsRequest":Landroid/view/inputmethod/InlineSuggestionsRequest;
    :goto_3e
    and-int/lit8 v8, v0, 0x40

    if-nez v8, :cond_44

    move-object v8, v5

    goto :goto_4c

    :cond_44
    sget-object v8, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/IntentSender;

    .line 556
    .local v8, "delayedFillIntentSender":Landroid/content/IntentSender;
    :goto_4c
    iput v1, p0, Landroid/service/autofill/FillRequest;->mId:I

    .line 557
    iput-object v2, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    .line 558
    const-class v9, Landroid/annotation/NonNull;

    iget-object v10, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    invoke-static {v9, v5, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 560
    iput-object v3, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    .line 561
    const-class v9, Landroid/annotation/NonNull;

    iget-object v10, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    invoke-static {v9, v5, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 563
    iput-object v4, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    .line 564
    iput v6, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    .line 566
    iget v5, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    const/16 v9, 0xfd7

    invoke-static {v5, v9}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 578
    iput-object v7, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 579
    iput-object v8, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    .line 581
    invoke-direct {p0}, Landroid/service/autofill/FillRequest;->onConstructed()V

    .line 582
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 604
    return-void
.end method

.method private blacklist onConstructed()V
    .registers 3

    .line 229
    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    const-string v1, "contexts"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 230
    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    const-string/jumbo v1, "hints"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 231
    return-void
.end method

.method public static blacklist requestFlagsToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 268
    new-instance v0, Landroid/service/autofill/FillRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/service/autofill/FillRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist singleRequestFlagsToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 274
    sparse-switch p0, :sswitch_data_26

    .line 295
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    :sswitch_8
    const-string v0, "FLAG_VIEW_REQUESTS_CREDMAN_SERVICE"

    return-object v0

    .line 292
    :sswitch_b
    const-string v0, "FLAG_SCREEN_HAS_CREDMAN_FIELD"

    return-object v0

    .line 290
    :sswitch_e
    const-string v0, "FLAG_PCC_DETECTION"

    return-object v0

    .line 288
    :sswitch_11
    const-string v0, "FLAG_RESET_FILL_DIALOG_STATE"

    return-object v0

    .line 286
    :sswitch_14
    const-string v0, "FLAG_IME_SHOWING"

    return-object v0

    .line 284
    :sswitch_17
    const-string v0, "FLAG_SUPPORTS_FILL_DIALOG"

    return-object v0

    .line 282
    :sswitch_1a
    const-string v0, "FLAG_VIEW_NOT_FOCUSED"

    return-object v0

    .line 280
    :sswitch_1d
    const-string v0, "FLAG_PASSWORD_INPUT_TYPE"

    return-object v0

    .line 278
    :sswitch_20
    const-string v0, "FLAG_COMPATIBILITY_MODE_REQUEST"

    return-object v0

    .line 276
    :sswitch_23
    const-string v0, "FLAG_MANUAL_REQUEST"

    return-object v0

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_20
        0x4 -> :sswitch_1d
        0x10 -> :sswitch_1a
        0x40 -> :sswitch_17
        0x80 -> :sswitch_14
        0x100 -> :sswitch_11
        0x200 -> :sswitch_e
        0x400 -> :sswitch_b
        0x800 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClientState()Landroid/os/Bundle;
    .registers 2

    .line 447
    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getDelayedFillIntentSender()Landroid/content/IntentSender;
    .registers 2

    .line 494
    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    return-object v0
.end method

.method public whitelist getFillContexts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 459
    iget v0, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    return v0
.end method

.method public whitelist getHints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 401
    iget v0, p0, Landroid/service/autofill/FillRequest;->mId:I

    return v0
.end method

.method public whitelist getInlineSuggestionsRequest()Landroid/view/inputmethod/InlineSuggestionsRequest;
    .registers 2

    .line 478
    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FillRequest { id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/FillRequest;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fillContexts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    .line 508
    invoke-static {v1}, Landroid/service/autofill/FillRequest;->requestFlagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inlineSuggestionsRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delayedFillIntentSender = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "flg":B
    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 522
    :cond_8
    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 523
    :cond_f
    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x40

    int-to-byte v0, v1

    .line 524
    :cond_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 525
    iget v1, p0, Landroid/service/autofill/FillRequest;->mId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 527
    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 528
    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 529
    :cond_31
    iget v1, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 531
    :cond_3f
    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 532
    :cond_48
    return-void
.end method
