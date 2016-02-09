.class public final Landroid/telecom/PhoneAccount;
.super Ljava/lang/Object;
.source "PhoneAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/PhoneAccount$Builder;,
        Landroid/telecom/PhoneAccount$1;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CALL_PROVIDER:I = 0x2

.field public static final CAPABILITY_CALL_SUBJECT:I = 0x40

.field public static final CAPABILITY_CONNECTION_MANAGER:I = 0x1

.field public static final CAPABILITY_MULTI_USER:I = 0x20

.field public static final CAPABILITY_PLACE_EMERGENCY_CALLS:I = 0x10

.field public static final CAPABILITY_SIM_SUBSCRIPTION:I = 0x4

.field public static final CAPABILITY_VIDEO_CALLING:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_HIGHLIGHT_COLOR:I = 0x0

.field public static final NO_ICON_TINT:I = 0x0

.field public static final NO_RESOURCE_ID:I = -0x1

.field public static final SCHEME_SIP:Ljava/lang/String; = "sip"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field public static final SCHEME_VOICEMAIL:Ljava/lang/String; = "voicemail"


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mAddress:Landroid/net/Uri;

.field private final mCapabilities:I

.field private final mHighlightColor:I

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private mIsEnabled:Z

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mShortDescription:Ljava/lang/CharSequence;

.field private final mSubscriptionAddress:Landroid/net/Uri;

.field private final mSupportedUriSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 559
    new-instance v0, Landroid/telecom/PhoneAccount$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/PhoneAccount$1;-><init>()V

    #@5
    .line 558
    sput-object v0, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_0

    #@c
    .line 573
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    #@14
    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@16
    .line 577
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    if-lez v0, :cond_1

    #@1c
    .line 578
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/net/Uri;

    #@24
    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    #@26
    .line 582
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    if-lez v0, :cond_2

    #@2c
    .line 583
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/net/Uri;

    #@34
    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    #@36
    .line 587
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    iput v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    #@3c
    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v0

    #@40
    iput v0, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    #@42
    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    #@48
    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@4b
    move-result-object v0

    #@4c
    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    #@4e
    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@51
    move-result-object v0

    #@52
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    #@58
    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v0

    #@5c
    if-lez v0, :cond_3

    #@5e
    .line 593
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@66
    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    #@68
    .line 597
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@6b
    move-result v0

    #@6c
    if-ne v0, v1, :cond_4

    #@6e
    move v0, v1

    #@6f
    :goto_4
    iput-boolean v0, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    #@71
    .line 571
    return-void

    #@72
    .line 575
    :cond_0
    iput-object v3, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@74
    goto :goto_0

    #@75
    .line 580
    :cond_1
    iput-object v3, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    #@77
    goto :goto_1

    #@78
    .line 585
    :cond_2
    iput-object v3, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    #@7a
    goto :goto_2

    #@7b
    .line 595
    :cond_3
    iput-object v3, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    #@7d
    goto :goto_3

    #@7e
    :cond_4
    move v0, v2

    #@7f
    .line 597
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccount;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/PhoneAccount;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Z)V
    .locals 1
    .param p1, "account"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "subscriptionAddress"    # Landroid/net/Uri;
    .param p4, "capabilities"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .param p6, "highlightColor"    # I
    .param p7, "label"    # Ljava/lang/CharSequence;
    .param p8, "shortDescription"    # Ljava/lang/CharSequence;
    .param p10, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "I",
            "Landroid/graphics/drawable/Icon;",
            "I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 339
    .local p9, "supportedUriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 350
    iput-object p1, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@5
    .line 351
    iput-object p2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    #@7
    .line 352
    iput-object p3, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    #@9
    .line 353
    iput p4, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    #@b
    .line 354
    iput-object p5, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    #@d
    .line 355
    iput p6, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    #@f
    .line 356
    iput-object p7, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    #@11
    .line 357
    iput-object p8, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    #@13
    .line 358
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    #@19
    .line 359
    iput-boolean p10, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    #@1b
    .line 349
    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ZLandroid/telecom/PhoneAccount;)V
    .locals 0
    .param p1, "account"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "subscriptionAddress"    # Landroid/net/Uri;
    .param p4, "capabilities"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .param p6, "highlightColor"    # I
    .param p7, "label"    # Ljava/lang/CharSequence;
    .param p8, "shortDescription"    # Ljava/lang/CharSequence;
    .param p9, "supportedUriSchemes"    # Ljava/util/List;
    .param p10, "isEnabled"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p10}, Landroid/telecom/PhoneAccount;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Z)V

    #@3
    return-void
.end method

.method public static builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .param p0, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 365
    new-instance v0, Landroid/telecom/PhoneAccount$Builder;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 520
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@2
    return-object v0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 416
    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    #@2
    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    #@0
    .prologue
    .line 503
    iget v0, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    #@2
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    .prologue
    .line 463
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getShortDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 445
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getSubscriptionAddress()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getSupportedUriSchemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 454
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public hasCapabilities(I)Z
    .locals 1
    .param p1, "capability"    # I

    #@0
    .prologue
    .line 427
    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    #@2
    and-int/2addr v0, p1

    #@3
    if-ne v0, p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 473
    iget-boolean v0, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    #@2
    return v0
.end method

.method public setIsEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    #@0
    .prologue
    .line 511
    iput-boolean p1, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    #@2
    .line 510
    return-void
.end method

.method public supportsUriScheme(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uriScheme"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 485
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    #@3
    if-eqz v2, :cond_0

    #@5
    if-nez p1, :cond_1

    #@7
    .line 486
    :cond_0
    return v3

    #@8
    .line 489
    :cond_1
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "scheme$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_3

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/String;

    #@1a
    .line 490
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@1c
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 491
    const/4 v2, 0x1

    #@23
    return v2

    #@24
    .line 494
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method public toBuilder()Landroid/telecom/PhoneAccount$Builder;
    .locals 1

    #@0
    .prologue
    .line 373
    new-instance v0, Landroid/telecom/PhoneAccount$Builder;

    #@2
    invoke-direct {v0, p0}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccount;)V

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "[["

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    .line 603
    iget-boolean v3, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    #@e
    if-eqz v3, :cond_0

    #@10
    const/16 v3, 0x58

    #@12
    .line 602
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    .line 604
    const-string/jumbo v4, "] PhoneAccount: "

    #@19
    .line 602
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    .line 605
    iget-object v4, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@1f
    .line 602
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 606
    const-string/jumbo v4, " Capabilities: "

    #@26
    .line 602
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 607
    iget v4, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    #@2c
    .line 602
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    .line 608
    const-string/jumbo v4, " Schemes: "

    #@33
    .line 602
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 609
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    #@39
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v2

    #@3d
    .local v2, "scheme$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_1

    #@43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v1

    #@47
    check-cast v1, Ljava/lang/String;

    #@49
    .line 610
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    .line 611
    const-string/jumbo v4, " "

    #@50
    .line 610
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    goto :goto_1

    #@54
    .line 603
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "scheme$iterator":Ljava/util/Iterator;
    :cond_0
    const/16 v3, 0x20

    #@56
    goto :goto_0

    #@57
    .line 613
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "scheme$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v3, "]"

    #@5a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 614
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 525
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 526
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 531
    :goto_0
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    #@b
    if-nez v2, :cond_1

    #@d
    .line 532
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 537
    :goto_1
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    #@12
    if-nez v2, :cond_2

    #@14
    .line 538
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 543
    :goto_2
    iget v2, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    #@19
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 544
    iget v2, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    #@1e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 545
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    #@23
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@26
    .line 546
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    #@28
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@2b
    .line 547
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    #@2d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@30
    .line 549
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    #@32
    if-nez v2, :cond_3

    #@34
    .line 550
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 555
    :goto_3
    iget-boolean v2, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    #@39
    if-eqz v2, :cond_4

    #@3b
    :goto_4
    int-to-byte v0, v0

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@3f
    .line 524
    return-void

    #@40
    .line 528
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 529
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@45
    invoke-virtual {v2, p1, p2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@48
    goto :goto_0

    #@49
    .line 534
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 535
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    #@4e
    invoke-virtual {v2, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@51
    goto :goto_1

    #@52
    .line 540
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    .line 541
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    #@57
    invoke-virtual {v2, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@5a
    goto :goto_2

    #@5b
    .line 552
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    .line 553
    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    #@60
    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@63
    goto :goto_3

    #@64
    :cond_4
    move v0, v1

    #@65
    .line 555
    goto :goto_4
.end method
