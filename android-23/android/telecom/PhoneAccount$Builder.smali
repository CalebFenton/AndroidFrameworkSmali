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
.field private mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mAddress:Landroid/net/Uri;

.field private mCapabilities:I

.field private mHighlightColor:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIsEnabled:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mShortDescription:Ljava/lang/CharSequence;

.field private mSubscriptionAddress:Landroid/net/Uri;

.field private mSupportedUriSchemes:Ljava/util/List;
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
.method public constructor <init>(Landroid/telecom/PhoneAccount;)V
    .locals 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 173
    iput v1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    #@6
    .line 176
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    #@d
    .line 178
    iput-boolean v1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    #@f
    .line 195
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@15
    .line 196
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    #@1b
    .line 197
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    #@21
    .line 198
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    #@27
    .line 199
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    #@2d
    .line 200
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    #@33
    .line 201
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getShortDescription()Ljava/lang/CharSequence;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    #@39
    .line 202
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    #@3b
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSupportedUriSchemes()Ljava/util/List;

    #@3e
    move-result-object v1

    #@3f
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@42
    .line 203
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    #@48
    .line 204
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->isEnabled()Z

    #@4b
    move-result v0

    #@4c
    iput-boolean v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    #@4e
    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 173
    iput v1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    #@6
    .line 176
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    #@d
    .line 178
    iput-boolean v1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    #@f
    .line 184
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@11
    .line 185
    iput-object p2, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    #@13
    .line 183
    return-void
.end method


# virtual methods
.method public addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .param p1, "uriScheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    #@8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 282
    :cond_0
    :goto_0
    return-object p0

    #@f
    .line 280
    :cond_1
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    #@11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    goto :goto_0
.end method

.method public build()Landroid/telecom/PhoneAccount;
    .locals 12

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 322
    const-string/jumbo v0, "tel"

    #@b
    invoke-virtual {p0, v0}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    #@e
    .line 325
    :cond_0
    new-instance v0, Landroid/telecom/PhoneAccount;

    #@10
    .line 326
    iget-object v1, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@12
    .line 327
    iget-object v2, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    #@14
    .line 328
    iget-object v3, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    #@16
    .line 329
    iget v4, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    #@18
    .line 330
    iget-object v5, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    #@1a
    .line 331
    iget v6, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    #@1c
    .line 332
    iget-object v7, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    #@1e
    .line 333
    iget-object v8, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    #@20
    .line 334
    iget-object v9, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    #@22
    .line 335
    iget-boolean v10, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    #@24
    .line 325
    const/4 v11, 0x0

    #@25
    invoke-direct/range {v0 .. v11}, Landroid/telecom/PhoneAccount;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ZLandroid/telecom/PhoneAccount;)V

    #@28
    return-object v0
.end method

.method public setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 214
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    #@2
    .line 215
    return-object p0
.end method

.method public setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 236
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    #@2
    .line 237
    return-object p0
.end method

.method public setHighlightColor(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 257
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    #@2
    .line 258
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 246
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    .line 247
    return-object p0
.end method

.method public setIsEnabled(Z)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "isEnabled"    # Z

    #@0
    .prologue
    .line 310
    iput-boolean p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    #@2
    .line 311
    return-object p0
.end method

.method public setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 268
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    #@2
    .line 269
    return-object p0
.end method

.method public setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 225
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    #@2
    .line 226
    return-object p0
.end method

.method public setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telecom/PhoneAccount$Builder;"
        }
    .end annotation

    #@0
    .prologue
    .line 292
    .local p1, "uriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@5
    .line 294
    if-eqz p1, :cond_0

    #@7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 299
    :cond_0
    return-object p0

    #@e
    .line 295
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "uriScheme$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/lang/String;

    #@1e
    .line 296
    .local v0, "uriScheme":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    #@21
    goto :goto_0
.end method
