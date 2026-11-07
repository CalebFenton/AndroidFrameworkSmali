.class public Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;
.super Ljava/lang/Object;
.source "EapSimAkaIdentityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$EapSimAkaIdentityTrackerHolder;,
        Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;
    }
.end annotation


# static fields
.field static final blacklist MAX_NUMBER_OF_REAUTH_INFO:I = 0x14

.field private static final blacklist REAUTH_INFO_LIFETIME_MILLIS:J

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sReauthInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetREAUTH_INFO_LIFETIME_MILLIS()J
    .registers 2

    sget-wide v0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->REAUTH_INFO_LIFETIME_MILLIS:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 37
    const-class v0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->TAG:Ljava/lang/String;

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->REAUTH_INFO_LIFETIME_MILLIS:J

    .line 52
    new-instance v0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$1;

    invoke-direct {v0}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$1;-><init>()V

    .line 53
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->sReauthInfoMap:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;
    .registers 1

    .line 166
    sget-object v0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$EapSimAkaIdentityTrackerHolder;->INSTANCE:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;

    return-object v0
.end method


# virtual methods
.method blacklist addReauthInfo(Ljava/lang/String;Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reauthInfo"    # Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    .line 201
    sget-object v0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->sReauthInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method blacklist clearReauthInfoMap()V
    .registers 2

    .line 261
    sget-object v0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->sReauthInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 262
    return-void
.end method

.method public blacklist deleteReauthInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "reauthId"    # Ljava/lang/String;
    .param p2, "permanentId"    # Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteReauthInfo for key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v1, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->sReauthInfoMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method blacklist garbageCollect()V
    .registers 7

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 237
    .local v0, "elapsedTimeMillis":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v2, "expiredKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->sReauthInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 240
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;>;>;"
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 241
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 242
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    invoke-virtual {v5}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->isValid()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 243
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 245
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;>;"
    :cond_2e
    goto :goto_13

    .line 246
    :cond_2f
    return-void
.end method

.method blacklist getNumberOfReauthInfo()I
    .registers 2

    .line 255
    sget-object v0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->sReauthInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getReauthInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;
    .registers 9
    .param p1, "reauthId"    # Ljava/lang/String;
    .param p2, "permanentId"    # Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->sReauthInfoMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    .line 215
    .local v1, "reauthInfo":Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;
    if-nez v1, :cond_35

    .line 216
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v3, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getReauthInfo no reauthInfo for key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_35
    return-object v1
.end method

.method public blacklist registerReauthCredentials(Ljava/lang/String;Ljava/lang/String;I[B[B[B)V
    .registers 15
    .param p1, "reauthId"    # Ljava/lang/String;
    .param p2, "permanentId"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "mk"    # [B
    .param p5, "kEncr"    # [B
    .param p6, "kAut"    # [B

    .line 181
    array-length v0, p4

    const/16 v1, 0x14

    if-ne v0, v1, :cond_b5

    array-length v0, p5

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b5

    array-length v0, p6

    if-ne v0, v1, :cond_b5

    .line 184
    new-instance v2, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    const/4 v7, 0x0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p3    # "count":I
    .end local p4    # "mk":[B
    .end local p5    # "kEncr":[B
    .end local p6    # "kAut":[B
    .local v3, "count":I
    .local v4, "mk":[B
    .local v5, "kEncr":[B
    .local v6, "kAut":[B
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;-><init>(I[B[B[BLcom/android/internal/net/eap/EapSimAkaIdentityTracker-IA;)V

    .line 185
    .local v2, "reauthInfo":Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 186
    .local p3, "key":Ljava/lang/String;
    sget-object p4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object p5, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerReauthCredentials: key"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v0, " reauth count:"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object p4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object p5, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    MK="

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v0, v4}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object p4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object p5, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    K_encr="

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v0, v5}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object p4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object p5, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    K_aut="

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v0, v6}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object p4, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->sReauthInfoMap:Ljava/util/Map;

    invoke-interface {p4, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->garbageCollect()V

    .line 192
    return-void

    .line 181
    .end local v2    # "reauthInfo":Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;
    .end local v3    # "count":I
    .end local v4    # "mk":[B
    .end local v5    # "kEncr":[B
    .end local v6    # "kAut":[B
    .local p3, "count":I
    .restart local p4    # "mk":[B
    .restart local p5    # "kEncr":[B
    .restart local p6    # "kAut":[B
    :cond_b5
    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 182
    .end local p3    # "count":I
    .end local p4    # "mk":[B
    .end local p5    # "kEncr":[B
    .end local p6    # "kAut":[B
    .restart local v3    # "count":I
    .restart local v4    # "mk":[B
    .restart local v5    # "kEncr":[B
    .restart local v6    # "kAut":[B
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string p4, "Invalid Full auth key len"

    invoke-direct {p3, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
