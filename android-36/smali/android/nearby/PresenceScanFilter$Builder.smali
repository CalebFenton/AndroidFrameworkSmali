.class public final Landroid/nearby/PresenceScanFilter$Builder;
.super Ljava/lang/Object;
.source "PresenceScanFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/PresenceScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mCredentials:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/nearby/PublicCredential;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExtendedProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nearby/DataElement;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMaxPathLoss:I

.field private final blacklist mPresenceActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPresenceIdentities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/16 v0, 0x7f

    iput v0, p0, Landroid/nearby/PresenceScanFilter$Builder;->mMaxPathLoss:I

    .line 151
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceScanFilter$Builder;->mCredentials:Ljava/util/Set;

    .line 152
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceScanFilter$Builder;->mPresenceIdentities:Ljava/util/Set;

    .line 153
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceScanFilter$Builder;->mPresenceActions:Ljava/util/Set;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceScanFilter$Builder;->mExtendedProperties:Ljava/util/List;

    .line 155
    return-void
.end method


# virtual methods
.method public whitelist addCredential(Landroid/nearby/PublicCredential;)Landroid/nearby/PresenceScanFilter$Builder;
    .registers 3
    .param p1, "credential"    # Landroid/nearby/PublicCredential;

    .line 174
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter$Builder;->mCredentials:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    return-object p0
.end method

.method public whitelist addExtendedProperty(Landroid/nearby/DataElement;)Landroid/nearby/PresenceScanFilter$Builder;
    .registers 3
    .param p1, "dataElement"    # Landroid/nearby/DataElement;

    .line 194
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter$Builder;->mExtendedProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-object p0
.end method

.method public whitelist addPresenceAction(I)Landroid/nearby/PresenceScanFilter$Builder;
    .registers 4
    .param p1, "action"    # I

    .line 185
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter$Builder;->mPresenceActions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    return-object p0
.end method

.method public whitelist build()Landroid/nearby/PresenceScanFilter;
    .registers 9

    .line 204
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter$Builder;->mCredentials:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "credentials cannot be empty"

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 205
    new-instance v2, Landroid/nearby/PresenceScanFilter;

    iget v3, p0, Landroid/nearby/PresenceScanFilter$Builder;->mMaxPathLoss:I

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/nearby/PresenceScanFilter$Builder;->mCredentials:Ljava/util/Set;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/nearby/PresenceScanFilter$Builder;->mPresenceActions:Ljava/util/Set;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Landroid/nearby/PresenceScanFilter$Builder;->mExtendedProperties:Ljava/util/List;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/nearby/PresenceScanFilter;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/nearby/PresenceScanFilter-IA;)V

    return-object v2
.end method

.method public whitelist setMaxPathLoss(I)Landroid/nearby/PresenceScanFilter$Builder;
    .registers 2
    .param p1, "maxPathLoss"    # I

    .line 164
    iput p1, p0, Landroid/nearby/PresenceScanFilter$Builder;->mMaxPathLoss:I

    .line 165
    return-object p0
.end method
