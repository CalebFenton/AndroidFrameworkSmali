.class final Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;
.super Ljava/lang/Object;
.source "NullCipherNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/security/NullCipherNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubscriptionState"
.end annotation


# instance fields
.field private blacklist mActiveNetworkClass:I

.field private final blacklist mState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$Gj9E3uADpNxPsEt139E9P9W__vY(Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->-$$Nest$mhasNullCipher(Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdate(Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;Landroid/telephony/SecurityAlgorithmUpdate;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->update(Landroid/telephony/SecurityAlgorithmUpdate;)I

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->mActiveNetworkClass:I

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->mState:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/security/NullCipherNotifier-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;-><init>()V

    return-void
.end method

.method private static blacklist getNetworkClass(I)I
    .registers 3

    .line 0
    const/4 v0, 0x2

    if-eqz p0, :cond_1e

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1e

    const/4 v1, 0x3

    if-eq p0, v0, :cond_1d

    if-eq p0, v1, :cond_1d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1c

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1c

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    return v1

    :cond_1c
    return v0

    :cond_1d
    return v1

    :cond_1e
    return v0
.end method

.method private blacklist hasNullCipher()Z
    .registers 2

    .line 297
    iget-object p0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->mState:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private blacklist update(Landroid/telephony/SecurityAlgorithmUpdate;)I
    .registers 8

    .line 268
    invoke-direct {p0}, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->hasNullCipher()Z

    move-result v0

    .line 270
    invoke-virtual {p1}, Landroid/telephony/SecurityAlgorithmUpdate;->getConnectionEvent()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->getNetworkClass(I)I

    move-result v1

    .line 271
    iget v2, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->mActiveNetworkClass:I

    if-ne v1, v2, :cond_12

    if-nez v1, :cond_19

    .line 272
    :cond_12
    iget-object v2, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->mState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 273
    iput v1, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->mActiveNetworkClass:I

    .line 276
    :cond_19
    iget-object v1, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->mState:Ljava/util/HashMap;

    .line 277
    invoke-virtual {p1}, Landroid/telephony/SecurityAlgorithmUpdate;->getConnectionEvent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->-$$Nest$sfgetUNKNOWN()Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;

    .line 278
    new-instance v2, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;

    .line 279
    invoke-virtual {p1}, Landroid/telephony/SecurityAlgorithmUpdate;->getEncryption()I

    move-result v3

    const/16 v4, 0x71

    if-ne v3, v4, :cond_3c

    .line 280
    invoke-static {v1}, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->-$$Nest$mgetEncryption(Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;)I

    move-result v3

    goto :goto_40

    .line 281
    :cond_3c
    invoke-virtual {p1}, Landroid/telephony/SecurityAlgorithmUpdate;->getEncryption()I

    move-result v3

    .line 282
    :goto_40
    invoke-virtual {p1}, Landroid/telephony/SecurityAlgorithmUpdate;->getIntegrity()I

    move-result v5

    if-ne v5, v4, :cond_4b

    .line 283
    invoke-static {v1}, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;->-$$Nest$mgetIntegrity(Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;)I

    move-result v1

    goto :goto_4f

    .line 284
    :cond_4b
    invoke-virtual {p1}, Landroid/telephony/SecurityAlgorithmUpdate;->getIntegrity()I

    move-result v1

    :goto_4f
    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;-><init>(IILcom/android/internal/telephony/security/NullCipherNotifier-IA;)V

    .line 285
    iget-object v1, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->mState:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/telephony/SecurityAlgorithmUpdate;->getConnectionEvent()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-direct {p0}, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->hasNullCipher()Z

    move-result p1

    if-eqz p1, :cond_68

    const/4 p0, 0x2

    return p0

    :cond_68
    if-eqz v0, :cond_71

    .line 290
    iget p0, p0, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->mActiveNetworkClass:I

    if-nez p0, :cond_6f

    goto :goto_71

    :cond_6f
    const/4 p0, 0x1

    return p0

    :cond_71
    :goto_71
    const/4 p0, 0x0

    return p0
.end method
