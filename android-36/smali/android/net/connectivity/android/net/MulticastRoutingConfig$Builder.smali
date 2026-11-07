.class public final Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;
.super Ljava/lang/Object;
.source "MulticastRoutingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/MulticastRoutingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mForwardingMode:I

.field private final blacklist mListeningAddresses:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMinScope:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    if-eq v0, p1, :cond_2c

    .line 199
    const/4 v0, 0x2

    if-ne v0, p1, :cond_13

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FORWARD_WITH_MIN_SCOPE requires passing the scope as a second argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown forwarding mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_2c
    iput p1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mForwardingMode:I

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mMinScope:I

    .line 208
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mListeningAddresses:Landroid/util/ArraySet;

    .line 209
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "scope"    # I

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, 0x2

    if-ne v0, p1, :cond_12

    .line 226
    iput p1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mForwardingMode:I

    .line 227
    iput p2, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mMinScope:I

    .line 228
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mListeningAddresses:Landroid/util/ArraySet;

    .line 229
    return-void

    .line 223
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Forwarding with a min scope must use forward mode FORWARD_WITH_MIN_SCOPE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addListeningAddress(Ljava/net/Inet6Address;)Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;
    .registers 5
    .param p1, "address"    # Ljava/net/Inet6Address;

    .line 255
    const/4 v0, 0x1

    iget v1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mForwardingMode:I

    if-ne v0, v1, :cond_b

    .line 260
    iget-object v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mListeningAddresses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 261
    return-object p0

    .line 256
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t add an address on a builder in mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mForwardingMode:I

    .line 257
    invoke-static {v2}, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->-$$Nest$smmodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist build()Landroid/net/connectivity/android/net/MulticastRoutingConfig;
    .registers 6

    .line 286
    new-instance v0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    iget v1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mForwardingMode:I

    iget v2, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mMinScope:I

    iget-object v3, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mListeningAddresses:Landroid/util/ArraySet;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/connectivity/android/net/MulticastRoutingConfig;-><init>(IILjava/util/Set;Landroid/net/connectivity/android/net/MulticastRoutingConfig-IA;)V

    return-object v0
.end method

.method public blacklist clearListeningAddress(Ljava/net/Inet6Address;)Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;
    .registers 5
    .param p1, "address"    # Ljava/net/Inet6Address;

    .line 273
    const/4 v0, 0x1

    iget v1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mForwardingMode:I

    if-ne v0, v1, :cond_b

    .line 277
    iget-object v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mListeningAddresses:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 278
    return-object p0

    .line 274
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t remove an address on a builder in mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mForwardingMode:I

    .line 275
    invoke-static {v2}, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->-$$Nest$smmodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMinimumScope(I)Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;
    .registers 5
    .param p1, "scope"    # I

    .line 238
    const/4 v0, 0x2

    iget v1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mForwardingMode:I

    if-ne v0, v1, :cond_8

    .line 242
    iput p1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mMinScope:I

    .line 243
    return-object p0

    .line 239
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set the scope on a builder in mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;->mForwardingMode:I

    .line 240
    invoke-static {v2}, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->-$$Nest$smmodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
