.class public final Landroid/nearby/PresenceBroadcastRequest$Builder;
.super Ljava/lang/Object;
.source "PresenceBroadcastRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/PresenceBroadcastRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCredential:Landroid/nearby/PrivateCredential;

.field private final blacklist mExtendedProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nearby/DataElement;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMediums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSalt:[B

.field private blacklist mTxPower:I

.field private blacklist mVersion:I


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;[BLandroid/nearby/PrivateCredential;)V
    .registers 7
    .param p2, "salt"    # [B
    .param p3, "credential"    # Landroid/nearby/PrivateCredential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[B",
            "Landroid/nearby/PrivateCredential;",
            ")V"
        }
    .end annotation

    .line 147
    .local p1, "mediums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "mediums cannot be empty"

    invoke-static {v0, v2}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    if-eqz p2, :cond_15

    array-length v2, p2

    if-lez v2, :cond_15

    goto :goto_16

    :cond_15
    move v1, v0

    :goto_16
    const-string v2, "salt cannot be empty"

    invoke-static {v1, v2}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 151
    iput v0, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mVersion:I

    .line 152
    const/16 v0, -0x7f

    iput v0, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mTxPower:I

    .line 153
    iput-object p3, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mCredential:Landroid/nearby/PrivateCredential;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mActions:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mExtendedProperties:Ljava/util/List;

    .line 157
    iput-object p2, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mSalt:[B

    .line 158
    iput-object p1, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mMediums:Ljava/util/List;

    .line 159
    return-void
.end method


# virtual methods
.method public whitelist addAction(I)Landroid/nearby/PresenceBroadcastRequest$Builder;
    .registers 4
    .param p1, "action"    # I

    .line 185
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mActions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-object p0
.end method

.method public whitelist addExtendedProperty(Landroid/nearby/DataElement;)Landroid/nearby/PresenceBroadcastRequest$Builder;
    .registers 3
    .param p1, "dataElement"    # Landroid/nearby/DataElement;

    .line 194
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mExtendedProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-object p0
.end method

.method public whitelist build()Landroid/nearby/PresenceBroadcastRequest;
    .registers 10

    .line 204
    new-instance v0, Landroid/nearby/PresenceBroadcastRequest;

    iget v1, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mVersion:I

    iget v2, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mTxPower:I

    iget-object v3, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mMediums:Ljava/util/List;

    iget-object v4, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mSalt:[B

    iget-object v5, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mActions:Ljava/util/List;

    iget-object v6, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mCredential:Landroid/nearby/PrivateCredential;

    iget-object v7, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mExtendedProperties:Ljava/util/List;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/nearby/PresenceBroadcastRequest;-><init>(IILjava/util/List;[BLjava/util/List;Landroid/nearby/PrivateCredential;Ljava/util/List;Landroid/nearby/PresenceBroadcastRequest-IA;)V

    return-object v0
.end method

.method public whitelist setTxPower(I)Landroid/nearby/PresenceBroadcastRequest$Builder;
    .registers 2
    .param p1, "txPower"    # I

    .line 176
    iput p1, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mTxPower:I

    .line 177
    return-object p0
.end method

.method public whitelist setVersion(I)Landroid/nearby/PresenceBroadcastRequest$Builder;
    .registers 2
    .param p1, "version"    # I

    .line 166
    iput p1, p0, Landroid/nearby/PresenceBroadcastRequest$Builder;->mVersion:I

    .line 167
    return-object p0
.end method
