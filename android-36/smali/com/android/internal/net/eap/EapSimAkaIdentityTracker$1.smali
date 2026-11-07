.class Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$1;
.super Ljava/util/LinkedHashMap;
.source "EapSimAkaIdentityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;",
            ">;)Z"
        }
    .end annotation

    .line 57
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;>;"
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-static {}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Reached MAX_NUMBER_OF_REAUTH_INFO(20) remove EldestEntry"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$1;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method
