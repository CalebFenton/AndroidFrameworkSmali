.class public Landroid/content/pm/ResolveInfo;
.super Ljava/lang/Object;
.source "ResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INTENT_FORWARDER_ACTIVITY:Ljava/lang/String; = "com.android.internal.app.IntentForwarderActivity"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ResolveInfo"


# instance fields
.field public whitelist activityInfo:Landroid/content/pm/ActivityInfo;

.field public greylist-max-o auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

.field public whitelist filter:Landroid/content/IntentFilter;

.field public whitelist handleAllWebDataURI:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist icon:I

.field public greylist-max-o iconResourceId:I

.field public whitelist isDefault:Z

.field public whitelist isInstantAppAvailable:Z

.field public whitelist labelRes:I

.field private final blacklist mAutoResolutionAllowed:Z

.field public whitelist match:I

.field public greylist-max-o noResourceId:Z

.field public whitelist nonLocalizedLabel:Ljava/lang/CharSequence;

.field public whitelist preferredOrder:I

.field public whitelist priority:I

.field public whitelist providerInfo:Landroid/content/pm/ProviderInfo;

.field public whitelist resolvePackageName:Ljava/lang/String;

.field public whitelist serviceInfo:Landroid/content/pm/ServiceInfo;

.field public whitelist specificIndex:I

.field public greylist system:Z

.field public greylist targetUserId:I

.field public blacklist userHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 515
    new-instance v0, Landroid/content/pm/ResolveInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 409
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->mAutoResolutionAllowed:Z

    .line 414
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/ResolveInfo;)V
    .registers 3
    .param p1, "orig"    # Landroid/content/pm/ResolveInfo;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 423
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 424
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 425
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 426
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 427
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    iput v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 428
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iput v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 429
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    iput v0, p0, Landroid/content/pm/ResolveInfo;->match:I

    .line 430
    iget v0, p1, Landroid/content/pm/ResolveInfo;->specificIndex:I

    iput v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 431
    iget v0, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    iput v0, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 432
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 433
    iget v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    iput v0, p0, Landroid/content/pm/ResolveInfo;->icon:I

    .line 434
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 435
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 436
    iget v0, p1, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    iput v0, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 437
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->system:Z

    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->system:Z

    .line 438
    iget v0, p1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    iput v0, p0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 439
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 440
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->mAutoResolutionAllowed:Z

    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->mAutoResolutionAllowed:Z

    .line 441
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 442
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 443
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 527
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 528
    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_d4

    .line 540
    const-string v0, "ResolveInfo"

    const-string v1, "Missing ComponentInfo!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 537
    :pswitch_1c
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 538
    goto :goto_3d

    .line 534
    :pswitch_27
    sget-object v0, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 535
    goto :goto_3d

    .line 531
    :pswitch_32
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 532
    nop

    .line 543
    :goto_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    .line 544
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 546
    :cond_4d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ResolveInfo;->match:I

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 551
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 552
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ResolveInfo;->icon:I

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 556
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_91

    move v0, v1

    goto :goto_92

    :cond_91
    move v0, v2

    :goto_92
    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->system:Z

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9c

    move v0, v1

    goto :goto_9d

    :cond_9c
    move v0, v2

    :goto_9d
    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 558
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ad

    move v0, v1

    goto :goto_ae

    :cond_ad
    move v0, v2

    :goto_ae
    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b8

    move v0, v1

    goto :goto_b9

    :cond_b8
    move v0, v2

    :goto_b9
    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->mAutoResolutionAllowed:Z

    .line 561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c2

    goto :goto_c3

    :cond_c2
    move v1, v2

    :goto_c3
    iput-boolean v1, p0, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 562
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 563
    .local v0, "userHandleId":I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_d2

    .line 564
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 566
    :cond_d2
    return-void

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_32
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ResolveInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "autoResolutionAllowed"    # Z

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 418
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 419
    iput-boolean p1, p0, Landroid/content/pm/ResolveInfo;->mAutoResolutionAllowed:Z

    .line 420
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 356
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 357
    return-void
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .registers 7
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpFlags"    # I

    .line 361
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v1, "  "

    if-eqz v0, :cond_32

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Filter:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 365
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " preferredOrder="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " match=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ResolveInfo;->match:I

    .line 367
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " specificIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isDefault="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v0, :cond_a4

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "resolvePackageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 373
    :cond_a4
    iget v0, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    if-nez v0, :cond_b0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_b0

    iget v0, p0, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v0, :cond_ed

    .line 374
    :cond_b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "labelRes=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " nonLocalizedLabel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " icon=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/pm/ResolveInfo;->icon:I

    .line 376
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 378
    :cond_ed
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_11e

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ActivityInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_17f

    .line 381
    :cond_11e
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_14f

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ServiceInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/ServiceInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_17f

    .line 384
    :cond_14f
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_17f

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ProviderInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/ProviderInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 388
    :cond_17f
    :goto_17f
    return-void
.end method

.method public greylist-max-r getComponentInfo()Landroid/content/pm/ComponentInfo;
    .registers 3

    .line 213
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0

    .line 214
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 215
    :cond_e
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    return-object v0

    .line 216
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing ComponentInfo!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getIconResource()I
    .registers 2

    .line 351
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 352
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getIconResourceInternal()I

    move-result v0

    return v0
.end method

.method final greylist-max-o getIconResourceInternal()I
    .registers 3

    .line 335
    iget v0, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    return v0

    .line 336
    :cond_7
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    .line 337
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    if-eqz v0, :cond_12

    .line 338
    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v1

    return v1

    .line 340
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isAutoResolutionAllowed()Z
    .registers 2

    .line 405
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->mAutoResolutionAllowed:Z

    return v0
.end method

.method public whitelist isCrossProfileIntentForwarderActivity()Z
    .registers 3

    .line 396
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 397
    const-string v1, "com.android.internal.app.IntentForwarderActivity"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 396
    :goto_13
    return v0
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget v1, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    if-eqz v1, :cond_12

    .line 313
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 315
    :cond_12
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    .line 316
    .local v1, "ci":Landroid/content/pm/ComponentInfo;
    if-nez v0, :cond_26

    iget v2, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    if-eqz v2, :cond_26

    .line 317
    iget-object v2, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 318
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v4, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    invoke-virtual {p1, v3, v4, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 320
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_26
    if-eqz v0, :cond_36

    .line 321
    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 323
    :cond_36
    invoke-virtual {v1, p1}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 233
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 234
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0

    .line 240
    :cond_7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget v0, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    if-eqz v0, :cond_26

    .line 244
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 245
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_26

    .line 246
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 249
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_26
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    .line 250
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 251
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    if-eqz v2, :cond_43

    .line 252
    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 253
    .local v2, "label":Ljava/lang/CharSequence;
    if-eqz v2, :cond_43

    .line 254
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 258
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_43
    invoke-virtual {v0, p1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 260
    .local v2, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_51

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 261
    :cond_51
    return-object v2
.end method

.method public greylist-max-o resolveIconResId()I
    .registers 3

    .line 288
    iget v0, p0, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v0, :cond_7

    .line 289
    iget v0, p0, Landroid/content/pm/ResolveInfo;->icon:I

    return v0

    .line 291
    :cond_7
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    .line 292
    .local v0, "componentInfo":Landroid/content/pm/ComponentInfo;
    iget v1, v0, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v1, :cond_12

    .line 293
    iget v1, v0, Landroid/content/pm/ComponentInfo;->icon:I

    return v1

    .line 295
    :cond_12
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    return v1
.end method

.method public greylist-max-o resolveLabelResId()I
    .registers 3

    .line 271
    iget v0, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    if-eqz v0, :cond_7

    .line 272
    iget v0, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    return v0

    .line 274
    :cond_7
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    .line 275
    .local v0, "componentInfo":Landroid/content/pm/ComponentInfo;
    iget v1, v0, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v1, :cond_12

    .line 276
    iget v1, v0, Landroid/content/pm/ComponentInfo;->labelRes:I

    return v1

    .line 278
    :cond_12
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 446
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    .line 447
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 448
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "ResolveInfo{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget v2, p0, Landroid/content/pm/ResolveInfo;->priority:I

    if-eqz v2, :cond_35

    .line 453
    const-string v2, " p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget v2, p0, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    :cond_35
    iget v2, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-eqz v2, :cond_43

    .line 457
    const-string v2, " o="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget v2, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    :cond_43
    const-string v2, " m=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget v2, p0, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget v2, p0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_60

    .line 463
    const-string v2, " targetUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget v2, p0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    :cond_60
    const-string v2, " userHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 470
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 479
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 480
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2e

    .line 482
    :cond_f
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1d

    .line 483
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2e

    .line 485
    :cond_1d
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_2b

    .line 486
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2e

    .line 489
    :cond_2b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    :goto_2e
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_3b

    .line 492
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, p2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3e

    .line 495
    :cond_3b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    :goto_3e
    iget v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    iget v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget v0, p0, Landroid/content/pm/ResolveInfo;->match:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget v0, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 503
    iget v0, p0, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 505
    iget v0, p0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->system:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget v0, p0, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->mAutoResolutionAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_94

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    goto :goto_95

    :cond_94
    const/4 v0, -0x2

    :goto_95
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    return-void
.end method
