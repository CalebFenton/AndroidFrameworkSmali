.class public final Landroid/app/RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/RemoteInput$Builder;,
        Landroid/app/RemoteInput$EditChoicesBeforeSending;,
        Landroid/app/RemoteInput$Source;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_FLAGS:I = 0x1

.field public static final whitelist EDIT_CHOICES_BEFORE_SENDING_AUTO:I = 0x0

.field public static final whitelist EDIT_CHOICES_BEFORE_SENDING_DISABLED:I = 0x1

.field public static final whitelist EDIT_CHOICES_BEFORE_SENDING_ENABLED:I = 0x2

.field private static final greylist-max-o EXTRA_DATA_TYPE_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.dataTypeResultsData"

.field public static final whitelist EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"

.field private static final greylist-max-o EXTRA_RESULTS_SOURCE:Ljava/lang/String; = "android.remoteinput.resultsSource"

.field private static final greylist-max-o FLAG_ALLOW_FREE_FORM_INPUT:I = 0x1

.field public static final whitelist RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"

.field public static final whitelist SOURCE_CHOICE:I = 0x1

.field public static final whitelist SOURCE_FREE_FORM_INPUT:I


# instance fields
.field private final greylist-max-o mAllowedDataTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mChoices:[Ljava/lang/CharSequence;

.field private final blacklist mEditChoicesBeforeSending:I

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private final greylist-max-o mResultKey:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 564
    new-instance v0, Landroid/app/RemoteInput$1;

    invoke-direct {v0}, Landroid/app/RemoteInput$1;-><init>()V

    sput-object v0, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteInput;->mResultKey:Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/RemoteInput;->mFlags:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/RemoteInput;->mEditChoicesBeforeSending:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteInput;->mAllowedDataTypes:Landroid/util/ArraySet;

    .line 376
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/RemoteInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/RemoteInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;IILandroid/os/Bundle;Landroid/util/ArraySet;)V
    .registers 10
    .param p1, "resultKey"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "choices"    # [Ljava/lang/CharSequence;
    .param p4, "flags"    # I
    .param p5, "editChoicesBeforeSending"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/os/Bundle;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p7, "allowedDataTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Landroid/app/RemoteInput;->mResultKey:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Landroid/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    .line 131
    iput-object p3, p0, Landroid/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    .line 132
    iput p4, p0, Landroid/app/RemoteInput;->mFlags:I

    .line 133
    iput p5, p0, Landroid/app/RemoteInput;->mEditChoicesBeforeSending:I

    .line 134
    iput-object p6, p0, Landroid/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    .line 135
    iput-object p7, p0, Landroid/app/RemoteInput;->mAllowedDataTypes:Landroid/util/ArraySet;

    .line 136
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 137
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_28

    .line 138
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setEditChoicesBeforeSending requires setAllowFreeFormInput"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_28
    :goto_28
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;IILandroid/os/Bundle;Landroid/util/ArraySet;Landroid/app/RemoteInput-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;IILandroid/os/Bundle;Landroid/util/ArraySet;)V

    return-void
.end method

.method public static whitelist addDataResultToIntent(Landroid/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V
    .registers 11
    .param p0, "remoteInput"    # Landroid/app/RemoteInput;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/RemoteInput;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 480
    .local p2, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    invoke-static {p1}, Landroid/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 481
    .local v0, "clipDataIntent":Landroid/content/Intent;
    if-nez v0, :cond_c

    .line 482
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    .line 484
    :cond_c
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 485
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/Uri;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 486
    .local v3, "mimeType":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 487
    .local v4, "uri":Landroid/net/Uri;
    if-nez v3, :cond_2f

    .line 488
    goto :goto_14

    .line 490
    :cond_2f
    nop

    .line 491
    invoke-static {v3}, Landroid/app/RemoteInput;->getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 492
    .local v5, "resultsBundle":Landroid/os/Bundle;
    if-nez v5, :cond_40

    .line 493
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v5, v6

    .line 495
    :cond_40
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-static {v3}, Landroid/app/RemoteInput;->getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 498
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/Uri;>;"
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "resultsBundle":Landroid/os/Bundle;
    goto :goto_14

    .line 499
    :cond_53
    const-string v1, "android.remoteinput.results"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 500
    return-void
.end method

.method public static whitelist addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 12
    .param p0, "remoteInputs"    # [Landroid/app/RemoteInput;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "results"    # Landroid/os/Bundle;

    .line 448
    invoke-static {p1}, Landroid/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 449
    .local v0, "clipDataIntent":Landroid/content/Intent;
    if-nez v0, :cond_c

    .line 450
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    .line 452
    :cond_c
    const-string v1, "android.remoteinput.resultsData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 453
    .local v2, "resultsBundle":Landroid/os/Bundle;
    if-nez v2, :cond_1a

    .line 454
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 456
    :cond_1a
    array-length v3, p0

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_39

    aget-object v5, p0, v4

    .line 457
    .local v5, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v5}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 458
    .local v6, "result":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/CharSequence;

    if-eqz v7, :cond_36

    .line 459
    invoke-virtual {v5}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v7

    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 456
    .end local v5    # "remoteInput":Landroid/app/RemoteInput;
    .end local v6    # "result":Ljava/lang/Object;
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 462
    :cond_39
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 463
    const-string v1, "android.remoteinput.results"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 464
    return-void
.end method

.method private static greylist-max-o getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;

    .line 577
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 578
    .local v0, "clipData":Landroid/content/ClipData;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 579
    return-object v1

    .line 581
    :cond_8
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 582
    .local v2, "clipDescription":Landroid/content/ClipDescription;
    const-string/jumbo v3, "text/vnd.android.intent"

    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 583
    return-object v1

    .line 585
    :cond_16
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "android.remoteinput.results"

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 586
    return-object v1

    .line 588
    :cond_23
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "remoteInputResultKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 396
    invoke-static {p0}, Landroid/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 397
    .local v0, "clipDataIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 398
    return-object v1

    .line 400
    :cond_8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 401
    .local v2, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 402
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 403
    .local v5, "key":Ljava/lang/String;
    const-string v6, "android.remoteinput.dataTypeResultsData"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 404
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, "mimeType":Ljava/lang/String;
    if-eqz v6, :cond_19

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 406
    goto :goto_19

    .line 408
    :cond_3e
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 409
    .local v7, "bundle":Landroid/os/Bundle;
    invoke-virtual {v7, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 410
    .local v8, "uriStr":Ljava/lang/String;
    if-eqz v8, :cond_19

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 411
    goto :goto_19

    .line 413
    :cond_4f
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v2, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v8    # "uriStr":Ljava/lang/String;
    :cond_56
    goto :goto_19

    .line 416
    :cond_57
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move-object v1, v2

    :goto_5f
    return-object v1
.end method

.method private static greylist-max-o getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.remoteinput.dataTypeResultsData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 428
    invoke-static {p0}, Landroid/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 429
    .local v0, "clipDataIntent":Landroid/content/Intent;
    if-nez v0, :cond_8

    .line 430
    const/4 v1, 0x0

    return-object v1

    .line 432
    :cond_8
    const-string v1, "android.remoteinput.resultsData"

    const-class v2, Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    return-object v1
.end method

.method public static whitelist getResultsSource(Landroid/content/Intent;)I
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;

    .line 537
    invoke-static {p0}, Landroid/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 538
    .local v0, "clipDataIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 539
    return v1

    .line 541
    :cond_8
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.remoteinput.resultsSource"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static whitelist setResultsSource(Landroid/content/Intent;I)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "source"    # I

    .line 516
    invoke-static {p0}, Landroid/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 517
    .local v0, "clipDataIntent":Landroid/content/Intent;
    if-nez v0, :cond_c

    .line 518
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    .line 520
    :cond_c
    const-string v1, "android.remoteinput.resultsSource"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    const-string v1, "android.remoteinput.results"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 522
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllowFreeFormInput()Z
    .registers 3

    .line 192
    iget v0, p0, Landroid/app/RemoteInput;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist getAllowedDataTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Landroid/app/RemoteInput;->mAllowedDataTypes:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getChoices()[Ljava/lang/CharSequence;
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getEditChoicesBeforeSending()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/app/RemoteInput;->mEditChoicesBeforeSending:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 208
    iget-object v0, p0, Landroid/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getResultKey()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/app/RemoteInput;->mResultKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isDataOnly()Z
    .registers 2

    .line 180
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 181
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1f

    .line 182
    :cond_13
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 180
    :goto_20
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 555
    iget-object v0, p0, Landroid/app/RemoteInput;->mResultKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Landroid/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Landroid/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 558
    iget v0, p0, Landroid/app/RemoteInput;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    iget v0, p0, Landroid/app/RemoteInput;->mEditChoicesBeforeSending:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget-object v0, p0, Landroid/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 561
    iget-object v0, p0, Landroid/app/RemoteInput;->mAllowedDataTypes:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 562
    return-void
.end method
