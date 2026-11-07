.class public final Landroid/content/pm/verify/domain/DomainVerificationManager;
.super Ljava/lang/Object;
.source "DomainVerificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/domain/DomainVerificationManager$Error;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_DOMAIN_SET_ID_INVALID:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_UNABLE_TO_APPROVE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_UNKNOWN_DOMAIN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_VERIFICATION_REQUEST:Ljava/lang/String; = "android.content.pm.verify.domain.extra.VERIFICATION_REQUEST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INTERNAL_ERROR_NAME_NOT_FOUND:I = 0x1

.field public static final whitelist STATUS_OK:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/verify/domain/IDomainVerificationManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "domainVerificationManager"    # Landroid/content/pm/verify/domain/IDomainVerificationManager;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    .line 163
    return-void
.end method

.method private blacklist rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;
    .registers 5
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 469
    instance-of v0, p1, Landroid/os/ServiceSpecificException;

    if-eqz v0, :cond_19

    .line 470
    move-object v0, p1

    check-cast v0, Landroid/os/ServiceSpecificException;

    iget v0, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 471
    .local v0, "serviceSpecificErrorCode":I
    if-nez p2, :cond_f

    .line 472
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 475
    :cond_f
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 476
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 479
    :cond_18
    return-object p1

    .line 480
    .end local v0    # "serviceSpecificErrorCode":I
    :cond_19
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_25

    .line 481
    move-object v0, p1

    check-cast v0, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0

    .line 483
    :cond_25
    return-object p1
.end method

.method private blacklist validateInput(Ljava/util/UUID;Ljava/util/Set;)V
    .registers 5
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 488
    .local p2, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_11

    .line 490
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 493
    return-void

    .line 491
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided domain set cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "domainSetId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 282
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-interface {v0, p1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 283
    :catch_7
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0, p1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 285
    .local v1, "converted":Ljava/lang/Exception;
    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_1e

    .line 287
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_18

    .line 288
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 290
    :cond_18
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 286
    :cond_1e
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist getDomainVerificationUserState(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationUserState;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 425
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    .line 426
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 425
    invoke-interface {v0, p1, v1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 427
    :catch_d
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0, p1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 429
    .local v1, "converted":Ljava/lang/Exception;
    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_24

    .line 431
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1e

    .line 432
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 434
    :cond_1e
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 430
    :cond_24
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist getOwnersForDomain(Ljava/lang/String;)Ljava/util/SortedSet;
    .registers 5
    .param p1, "domain"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedSet<",
            "Landroid/content/pm/verify/domain/DomainOwner;",
            ">;"
        }
    .end annotation

    .line 456
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    .line 458
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 457
    invoke-interface {v0, p1, v1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 459
    .local v0, "orderedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/verify/domain/DomainOwner;>;"
    new-instance v1, Ljava/util/TreeSet;

    .line 460
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/pm/verify/domain/DomainVerificationManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/content/pm/verify/domain/DomainVerificationManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 461
    .local v1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Landroid/content/pm/verify/domain/DomainOwner;>;"
    invoke-interface {v1, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    .line 462
    return-object v1

    .line 463
    .end local v0    # "orderedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/verify/domain/DomainOwner;>;"
    .end local v1    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Landroid/content/pm/verify/domain/DomainOwner;>;"
    :catch_24
    move-exception v0

    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroup;",
            ">;>;"
        }
    .end annotation

    .line 227
    .local p2, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 233
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    .line 235
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 236
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/UriRelativeFilterGroup;>;>;"
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    .line 237
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 238
    .local v3, "domain":Ljava/lang/String;
    const-class v4, Landroid/content/UriRelativeFilterGroupParcel;

    .line 239
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v4

    .line 241
    .local v4, "parcels":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriRelativeFilterGroupParcel;>;"
    invoke-static {v4}, Landroid/content/UriRelativeFilterGroup;->parcelsToGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_43} :catch_46

    .line 242
    nop

    .end local v3    # "domain":Ljava/lang/String;
    .end local v4    # "parcels":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriRelativeFilterGroupParcel;>;"
    goto :goto_2a

    .line 244
    :cond_45
    return-object v1

    .line 245
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/UriRelativeFilterGroup;>;>;"
    :catch_46
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryValidVerificationPackageNames()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-interface {v0}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->queryValidVerificationPackageNames()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 263
    :catch_7
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    .line 348
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 347
    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    .line 358
    nop

    .line 359
    return-void

    .line 349
    :catch_d
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 351
    .local v1, "converted":Ljava/lang/Exception;
    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_25

    .line 353
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1f

    .line 354
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 356
    :cond_1f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 352
    :cond_25
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist setDomainVerificationStatus(Ljava/util/UUID;Ljava/util/Set;I)I
    .registers 7
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .param p3, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 315
    .local p2, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationManager;->validateInput(Ljava/util/UUID;Ljava/util/Set;)V

    .line 318
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/verify/domain/DomainSet;

    invoke-direct {v2, p2}, Landroid/content/pm/verify/domain/DomainSet;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1, v2, p3}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setDomainVerificationStatus(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;I)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    return v0

    .line 320
    :catch_13
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 322
    .local v1, "converted":Ljava/lang/Exception;
    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_2b

    .line 324
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_25

    .line 325
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 327
    :cond_25
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 323
    :cond_2b
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;Z)I
    .registers 8
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .param p3, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 397
    .local p2, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationManager;->validateInput(Ljava/util/UUID;Ljava/util/Set;)V

    .line 400
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    .line 401
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/verify/domain/DomainSet;

    invoke-direct {v2, p2}, Landroid/content/pm/verify/domain/DomainSet;-><init>(Ljava/util/Set;)V

    iget-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 400
    invoke-interface {v0, v1, v2, p3, v3}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setDomainVerificationUserSelection(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;ZI)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_19

    return v0

    .line 402
    :catch_19
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 404
    .local v1, "converted":Ljava/lang/Exception;
    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_31

    .line 406
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2b

    .line 407
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 409
    :cond_2b
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 405
    :cond_31
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist setUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroup;",
            ">;>;)V"
        }
    .end annotation

    .line 198
    .local p2, "domainToGroupsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/UriRelativeFilterGroup;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    .local v2, "domain":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 203
    .local v3, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriRelativeFilterGroup;>;"
    invoke-static {v3}, Landroid/content/UriRelativeFilterGroup;->groupsToParcels(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 204
    .end local v2    # "domain":Ljava/lang/String;
    .end local v3    # "groups":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriRelativeFilterGroup;>;"
    goto :goto_13

    .line 206
    :cond_2d
    :try_start_2d
    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-interface {v1, p1, v0}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setUriRelativeFilterGroups(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_34

    .line 209
    nop

    .line 210
    return-void

    .line 207
    :catch_34
    move-exception v1

    .line 208
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
