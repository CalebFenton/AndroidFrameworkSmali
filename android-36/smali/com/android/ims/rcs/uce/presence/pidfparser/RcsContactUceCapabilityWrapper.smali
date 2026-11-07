.class public Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;
.super Ljava/lang/Object;
.source "RcsContactUceCapabilityWrapper.java"


# instance fields
.field private final blacklist mContactUri:Landroid/net/Uri;

.field private blacklist mEntityUri:Landroid/net/Uri;

.field private blacklist mIsMalformed:Z

.field private final blacklist mPresenceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRequestResult:I

.field private final blacklist mSourceType:I


# direct methods
.method public constructor blacklist <init>(Landroid/net/Uri;II)V
    .registers 5
    .param p1, "contact"    # Landroid/net/Uri;
    .param p2, "sourceType"    # I
    .param p3, "requestResult"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mPresenceTuples:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mContactUri:Landroid/net/Uri;

    .line 52
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mSourceType:I

    .line 53
    iput p3, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mRequestResult:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mIsMalformed:Z

    .line 55
    return-void
.end method


# virtual methods
.method public blacklist addCapabilityTuple(Landroid/telephony/ims/RcsContactPresenceTuple;)V
    .registers 3
    .param p1, "tuple"    # Landroid/telephony/ims/RcsContactPresenceTuple;

    .line 62
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mPresenceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public blacklist getEntityUri()Landroid/net/Uri;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mEntityUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist isMalformed()Z
    .registers 3

    .line 88
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mIsMalformed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 89
    return v1

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mPresenceTuples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 92
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_10
    return v1
.end method

.method public blacklist setEntityUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "entityUri"    # Landroid/net/Uri;

    .line 77
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mEntityUri:Landroid/net/Uri;

    .line 78
    return-void
.end method

.method public blacklist setMalformedContents()V
    .registers 2

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mIsMalformed:Z

    .line 70
    return-void
.end method

.method public blacklist toRcsContactUceCapability()Landroid/telephony/ims/RcsContactUceCapability;
    .registers 5

    .line 111
    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mContactUri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mSourceType:I

    iget v3, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mRequestResult:I

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;-><init>(Landroid/net/Uri;II)V

    .line 115
    .local v0, "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mPresenceTuples:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->addCapabilityTuples(Ljava/util/List;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 116
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/RcsContactUceCapabilityWrapper;->mEntityUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->setEntityUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 117
    invoke-virtual {v0}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v1

    return-object v1
.end method
