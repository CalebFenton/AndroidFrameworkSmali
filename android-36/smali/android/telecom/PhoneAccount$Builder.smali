.class public Landroid/telecom/PhoneAccount$Builder;
.super Ljava/lang/Object;
.source "PhoneAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/PhoneAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private greylist-max-o mAddress:Landroid/net/Uri;

.field private greylist-max-o mCapabilities:I

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mGroupId:Ljava/lang/String;

.field private greylist-max-o mHighlightColor:I

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIsEnabled:Z

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mShortDescription:Ljava/lang/CharSequence;

.field private blacklist mSimultaneousCallingRestriction:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSubscriptionAddress:Landroid/net/Uri;

.field private greylist-max-o mSupportedAudioRoutes:I

.field private greylist-max-o mSupportedUriSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/telecom/PhoneAccount;)V
    .registers 4
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    const/16 v0, 0x1f

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    .line 555
    iput-boolean v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 556
    const-string v0, ""

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSimultaneousCallingRestriction:Ljava/util/Set;

    .line 579
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 580
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    .line 581
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    .line 582
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    .line 583
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 584
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 585
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getShortDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    .line 586
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSupportedUriSchemes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 587
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 588
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 589
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mExtras:Landroid/os/Bundle;

    .line 590
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    .line 591
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSupportedAudioRoutes()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    .line 592
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->hasSimultaneousCallingRestriction()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 593
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSimultaneousCallingRestriction()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSimultaneousCallingRestriction:Ljava/util/Set;

    .line 595
    :cond_77
    return-void
.end method

.method public constructor whitelist <init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    const/16 v0, 0x1f

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    .line 555
    iput-boolean v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 556
    const-string v0, ""

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSimultaneousCallingRestriction:Ljava/util/Set;

    .line 568
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 569
    iput-object p2, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 570
    return-void
.end method


# virtual methods
.method public whitelist addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;
    .registers 3
    .param p1, "uriScheme"    # Ljava/lang/String;

    .line 704
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 705
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_13
    return-object p0
.end method

.method public whitelist build()Landroid/telecom/PhoneAccount;
    .registers 19

    .line 871
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 872
    const-string/jumbo v1, "tel"

    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    .line 875
    :cond_10
    new-instance v2, Landroid/telecom/PhoneAccount;

    iget-object v3, v0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v4, v0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    iget-object v5, v0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    iget v6, v0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    iget-object v7, v0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget v8, v0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    iget-object v9, v0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    iget-object v11, v0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    iget-object v12, v0, Landroid/telecom/PhoneAccount$Builder;->mExtras:Landroid/os/Bundle;

    iget v13, v0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    iget-boolean v14, v0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    iget-object v15, v0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    iget-object v1, v0, Landroid/telecom/PhoneAccount$Builder;->mSimultaneousCallingRestriction:Ljava/util/Set;

    const/16 v17, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v17}, Landroid/telecom/PhoneAccount;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/os/Bundle;IZLjava/lang/String;Ljava/util/Set;Landroid/telecom/PhoneAccount-IA;)V

    return-object v2
.end method

.method public whitelist clearSimultaneousCallingRestriction()Landroid/telecom/PhoneAccount$Builder;
    .registers 2

    .line 860
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSimultaneousCallingRestriction:Ljava/util/Set;

    .line 861
    return-object p0
.end method

.method public whitelist setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .registers 2
    .param p1, "value"    # Landroid/net/Uri;

    .line 626
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    .line 627
    return-object p0
.end method

.method public whitelist setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 648
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    .line 649
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/telecom/PhoneAccount$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 750
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mExtras:Landroid/os/Bundle;

    .line 751
    return-object p0
.end method

.method public whitelist setGroupId(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;
    .registers 3
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 790
    if-eqz p1, :cond_5

    .line 791
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    goto :goto_9

    .line 793
    :cond_5
    const-string v0, ""

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mGroupId:Ljava/lang/String;

    .line 795
    :goto_9
    return-object p0
.end method

.method public whitelist setHighlightColor(I)Landroid/telecom/PhoneAccount$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 673
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 674
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount$Builder;
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 662
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 663
    return-object p0
.end method

.method public greylist-max-o setIsEnabled(Z)Landroid/telecom/PhoneAccount$Builder;
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 762
    iput-boolean p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 763
    return-object p0
.end method

.method public greylist-max-o setLabel(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 610
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 611
    return-object p0
.end method

.method public whitelist setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 689
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    .line 690
    return-object p0
.end method

.method public whitelist setSimultaneousCallingRestriction(Ljava/util/Set;)Landroid/telecom/PhoneAccount$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)",
            "Landroid/telecom/PhoneAccount$Builder;"
        }
    .end annotation

    .line 842
    .local p1, "handles":Ljava/util/Set;, "Ljava/util/Set<Landroid/telecom/PhoneAccountHandle;>;"
    if-eqz p1, :cond_5

    .line 846
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mSimultaneousCallingRestriction:Ljava/util/Set;

    .line 847
    return-object p0

    .line 843
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the Set of PhoneAccountHandles must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .registers 2
    .param p1, "value"    # Landroid/net/Uri;

    .line 637
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    .line 638
    return-object p0
.end method

.method public greylist-max-o setSupportedAudioRoutes(I)Landroid/telecom/PhoneAccount$Builder;
    .registers 2
    .param p1, "routes"    # I

    .line 806
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedAudioRoutes:I

    .line 807
    return-object p0
.end method

.method public whitelist setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telecom/PhoneAccount$Builder;"
        }
    .end annotation

    .line 723
    .local p1, "uriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 725
    if-eqz p1, :cond_21

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 726
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 727
    .local v1, "uriScheme":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    .line 728
    .end local v1    # "uriScheme":Ljava/lang/String;
    goto :goto_11

    .line 730
    :cond_21
    return-object p0
.end method
