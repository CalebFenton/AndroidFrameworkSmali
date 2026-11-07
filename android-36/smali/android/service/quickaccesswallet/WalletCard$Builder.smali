.class public final Landroid/service/quickaccesswallet/WalletCard$Builder;
.super Ljava/lang/Object;
.source "WalletCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/WalletCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCardIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mCardId:Ljava/lang/String;

.field private blacklist mCardImage:Landroid/graphics/drawable/Icon;

.field private blacklist mCardLabel:Ljava/lang/CharSequence;

.field private blacklist mCardLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCardType:I

.field private blacklist mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mNonPaymentCardSecondaryImage:Landroid/graphics/drawable/Icon;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCardIcon(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardId(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardImage(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardImage:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardLabel(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardLocations(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardLocations:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardType(Landroid/service/quickaccesswallet/WalletCard$Builder;)I
    .registers 1

    iget p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentDescription(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNonPaymentCardSecondaryImage(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mNonPaymentCardSecondaryImage:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingIntent(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ILandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "cardType"    # I
    .param p3, "cardImage"    # Landroid/graphics/drawable/Icon;
    .param p4, "contentDescription"    # Ljava/lang/CharSequence;
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardLocations:Ljava/util/List;

    .line 310
    iput-object p1, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardId:Ljava/lang/String;

    .line 311
    iput p2, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardType:I

    .line 312
    iput-object p3, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardImage:Landroid/graphics/drawable/Icon;

    .line 313
    iput-object p4, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mContentDescription:Ljava/lang/CharSequence;

    .line 314
    iput-object p5, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 315
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 11
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "cardImage"    # Landroid/graphics/drawable/Icon;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 325
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "cardId":Ljava/lang/String;
    .end local p2    # "cardImage":Landroid/graphics/drawable/Icon;
    .end local p3    # "contentDescription":Ljava/lang/CharSequence;
    .end local p4    # "pendingIntent":Landroid/app/PendingIntent;
    .local v1, "cardId":Ljava/lang/String;
    .local v3, "cardImage":Landroid/graphics/drawable/Icon;
    .local v4, "contentDescription":Ljava/lang/CharSequence;
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    invoke-direct/range {v0 .. v5}, Landroid/service/quickaccesswallet/WalletCard$Builder;-><init>(Ljava/lang/String;ILandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 327
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/quickaccesswallet/WalletCard;
    .registers 3

    .line 393
    new-instance v0, Landroid/service/quickaccesswallet/WalletCard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/quickaccesswallet/WalletCard;-><init>(Landroid/service/quickaccesswallet/WalletCard$Builder;Landroid/service/quickaccesswallet/WalletCard-IA;)V

    return-object v0
.end method

.method public whitelist setCardIcon(Landroid/graphics/drawable/Icon;)Landroid/service/quickaccesswallet/WalletCard$Builder;
    .registers 2
    .param p1, "cardIcon"    # Landroid/graphics/drawable/Icon;

    .line 341
    iput-object p1, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardIcon:Landroid/graphics/drawable/Icon;

    .line 342
    return-object p0
.end method

.method public whitelist setCardLabel(Ljava/lang/CharSequence;)Landroid/service/quickaccesswallet/WalletCard$Builder;
    .registers 2
    .param p1, "cardLabel"    # Ljava/lang/CharSequence;

    .line 356
    iput-object p1, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardLabel:Ljava/lang/CharSequence;

    .line 357
    return-object p0
.end method

.method public whitelist setCardLocations(Ljava/util/List;)Landroid/service/quickaccesswallet/WalletCard$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)",
            "Landroid/service/quickaccesswallet/WalletCard$Builder;"
        }
    .end annotation

    .line 381
    .local p1, "cardLocations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    const-string v0, "cardLocations"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 382
    iput-object p1, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardLocations:Ljava/util/List;

    .line 383
    return-object p0
.end method

.method public whitelist setNonPaymentCardSecondaryImage(Landroid/graphics/drawable/Icon;)Landroid/service/quickaccesswallet/WalletCard$Builder;
    .registers 4
    .param p1, "nonPaymentCardSecondaryImage"    # Landroid/graphics/drawable/Icon;

    .line 367
    iget v0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "This field can only be set on non-payment cards"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 370
    iput-object p1, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mNonPaymentCardSecondaryImage:Landroid/graphics/drawable/Icon;

    .line 371
    return-object p0
.end method
