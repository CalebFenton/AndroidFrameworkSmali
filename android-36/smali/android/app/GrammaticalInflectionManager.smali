.class public Landroid/app/GrammaticalInflectionManager;
.super Ljava/lang/Object;
.source "GrammaticalInflectionManager.java"


# static fields
.field public static final blacklist VALID_GRAMMATICAL_GENDER_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/IGrammaticalInflectionManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 42
    new-instance v0, Ljava/util/HashSet;

    .line 44
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 45
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 46
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 47
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v1

    .line 43
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/app/GrammaticalInflectionManager;->VALID_GRAMMATICAL_GENDER_VALUES:Ljava/util/Set;

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/IGrammaticalInflectionManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/IGrammaticalInflectionManager;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Landroid/app/GrammaticalInflectionManager;->mService:Landroid/app/IGrammaticalInflectionManager;

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist getApplicationGrammaticalGender()I
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getGrammaticalGender()I

    move-result v0

    .line 69
    return v0
.end method

.method public whitelist getSystemGrammaticalGender()I
    .registers 4

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/app/GrammaticalInflectionManager;->mService:Landroid/app/IGrammaticalInflectionManager;

    iget-object v1, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    iget-object v2, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 140
    invoke-interface {v0, v1, v2}, Landroid/app/IGrammaticalInflectionManager;->getSystemGrammaticalGender(Landroid/content/AttributionSource;I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 142
    :catch_13
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist peekSystemGrammaticalGenderByUserId(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 160
    :try_start_0
    iget-object v0, p0, Landroid/app/GrammaticalInflectionManager;->mService:Landroid/app/IGrammaticalInflectionManager;

    iget-object v1, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/IGrammaticalInflectionManager;->peekSystemGrammaticalGenderByUserId(Landroid/content/AttributionSource;I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 162
    :catch_d
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRequestedApplicationGrammaticalGender(I)V
    .registers 5
    .param p1, "grammaticalGender"    # I

    .line 91
    sget-object v0, Landroid/app/GrammaticalInflectionManager;->VALID_GRAMMATICAL_GENDER_VALUES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 96
    :try_start_c
    iget-object v0, p0, Landroid/app/GrammaticalInflectionManager;->mService:Landroid/app/IGrammaticalInflectionManager;

    iget-object v1, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 96
    invoke-interface {v0, v1, v2, p1}, Landroid/app/IGrammaticalInflectionManager;->setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1f

    .line 100
    nop

    .line 101
    return-void

    .line 98
    :catch_1f
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown grammatical gender"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSystemWideGrammaticalGender(I)V
    .registers 4
    .param p1, "grammaticalGender"    # I

    .line 114
    sget-object v0, Landroid/app/GrammaticalInflectionManager;->VALID_GRAMMATICAL_GENDER_VALUES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 119
    :try_start_c
    iget-object v0, p0, Landroid/app/GrammaticalInflectionManager;->mService:Landroid/app/IGrammaticalInflectionManager;

    iget-object v1, p0, Landroid/app/GrammaticalInflectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IGrammaticalInflectionManager;->setSystemWideGrammaticalGender(II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_19

    .line 122
    nop

    .line 123
    return-void

    .line 120
    :catch_19
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 115
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown grammatical gender"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
