.class final Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;
.super Ljava/lang/Object;
.source "GetWalletCardsCallbackImpl.java"

# interfaces
.implements Landroid/service/quickaccesswallet/GetWalletCardsCallback;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "QAWalletCallback"


# instance fields
.field private final blacklist mCallback:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

.field private blacklist mCalled:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mRequest:Landroid/service/quickaccesswallet/GetWalletCardsRequest;


# direct methods
.method public static synthetic blacklist $r8$lambda$k0VmQimD8iTkOUO85Ffmv7r3BeU(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->lambda$onSuccess$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mVrtQFOolrGbKRHJCC-fRFhmVio(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->lambda$onFailure$2(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$s3WRyJYa6CRlKuh4dg0r_dZHIEI(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->lambda$onSuccess$0(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 5
    .param p1, "request"    # Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mRequest:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    .line 50
    iput-object p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCallback:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 51
    iput-object p3, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p4, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private blacklist isValidResponse(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)Z
    .registers 9
    .param p1, "response"    # Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 117
    const/4 v0, 0x0

    const-string v1, "QAWalletCallback"

    if-nez p1, :cond_b

    .line 118
    const-string v2, "Invalid response: response is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v0

    .line 121
    :cond_b
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    .line 122
    const-string v2, "Invalid response: walletCards is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v0

    .line 125
    :cond_17
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getSelectedIndex()I

    move-result v2

    if-gez v2, :cond_23

    .line 126
    const-string v2, "Invalid response: selectedIndex is negative"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v0

    .line 129
    :cond_23
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_41

    .line 130
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getSelectedIndex()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_41

    .line 131
    const-string v2, "Invalid response: selectedIndex out of bounds"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v0

    .line 134
    :cond_41
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mRequest:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    invoke-virtual {v3}, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->getMaxCards()I

    move-result v3

    if-le v2, v3, :cond_57

    .line 135
    const-string v2, "Invalid response: too many cards"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v0

    .line 138
    :cond_57
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/quickaccesswallet/WalletCard;

    .line 139
    .local v3, "walletCard":Landroid/service/quickaccesswallet/WalletCard;
    if-nez v3, :cond_74

    .line 140
    const-string v2, "Invalid response: card is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v0

    .line 143
    :cond_74
    invoke-virtual {v3}, Landroid/service/quickaccesswallet/WalletCard;->getCardId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_80

    .line 144
    const-string v2, "Invalid response: cardId is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v0

    .line 147
    :cond_80
    invoke-virtual {v3}, Landroid/service/quickaccesswallet/WalletCard;->getCardImage()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 148
    .local v5, "cardImage":Landroid/graphics/drawable/Icon;
    if-nez v5, :cond_8c

    .line 149
    const-string v2, "Invalid response: cardImage is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v0

    .line 152
    :cond_8c
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v6

    if-ne v6, v4, :cond_a4

    .line 153
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v4, v6, :cond_a4

    .line 154
    const-string v2, "Invalid response: cardImage bitmaps must be hardware bitmaps"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v0

    .line 157
    :cond_a4
    invoke-virtual {v3}, Landroid/service/quickaccesswallet/WalletCard;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 158
    const-string v2, "Invalid response: contentDescription is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v0

    .line 161
    :cond_b4
    invoke-virtual {v3}, Landroid/service/quickaccesswallet/WalletCard;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    if-nez v4, :cond_c0

    .line 162
    const-string v2, "Invalid response: pendingIntent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v0

    .line 165
    .end local v3    # "walletCard":Landroid/service/quickaccesswallet/WalletCard;
    .end local v5    # "cardImage":Landroid/graphics/drawable/Icon;
    :cond_c0
    goto :goto_5f

    .line 166
    :cond_c1
    return v4
.end method

.method private synthetic blacklist lambda$onFailure$2(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .registers 2
    .param p1, "error"    # Landroid/service/quickaccesswallet/GetWalletCardsError;

    .line 87
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->onFailureInternal(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$0(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .registers 2
    .param p1, "response"    # Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 71
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->onSuccessInternal(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$1()V
    .registers 3

    .line 74
    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsError;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/service/quickaccesswallet/GetWalletCardsError;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->onFailureInternal(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method private blacklist onFailureInternal(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .registers 5
    .param p1, "error"    # Landroid/service/quickaccesswallet/GetWalletCardsError;

    .line 104
    iget-boolean v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCalled:Z

    const-string v1, "QAWalletCallback"

    if-eqz v0, :cond_c

    .line 105
    const-string v0, "already called"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 108
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCalled:Z

    .line 110
    :try_start_f
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCallback:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    invoke-interface {v0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onGetWalletCardsFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 113
    goto :goto_1b

    .line 111
    :catch_15
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Error returning failure message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method private blacklist onSuccessInternal(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .registers 5
    .param p1, "response"    # Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 91
    iget-boolean v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCalled:Z

    const-string v1, "QAWalletCallback"

    if-eqz v0, :cond_c

    .line 92
    const-string v0, "already called"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 95
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCalled:Z

    .line 97
    :try_start_f
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mCallback:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    invoke-interface {v0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onGetWalletCardsSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 100
    goto :goto_1b

    .line 98
    :catch_15
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Error returning wallet cards"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method private blacklist removeLocationsFromResponse(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .registers 4
    .param p1, "response"    # Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 170
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/quickaccesswallet/WalletCard;

    .line 171
    .local v1, "card":Landroid/service/quickaccesswallet/WalletCard;
    invoke-virtual {v1}, Landroid/service/quickaccesswallet/WalletCard;->removeCardLocations()V

    .line 172
    .end local v1    # "card":Landroid/service/quickaccesswallet/WalletCard;
    goto :goto_8

    .line 173
    :cond_18
    return-void
.end method


# virtual methods
.method public whitelist onFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .registers 4
    .param p1, "error"    # Landroid/service/quickaccesswallet/GetWalletCardsError;

    .line 87
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public whitelist onSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .registers 4
    .param p1, "response"    # Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 64
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->isValidResponse(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 66
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 67
    const-string v1, "android.software.wallet_location_based_suggestions"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 68
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->removeLocationsFromResponse(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    .line 71
    :cond_17
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda1;-><init>(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_33

    .line 73
    :cond_22
    const-string v0, "QAWalletCallback"

    const-string v1, "Invalid GetWalletCards response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda2;-><init>(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    :goto_33
    return-void
.end method
