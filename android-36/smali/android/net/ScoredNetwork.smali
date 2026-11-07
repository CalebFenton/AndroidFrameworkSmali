.class public Landroid/net/ScoredNetwork;
.super Ljava/lang/Object;
.source "ScoredNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ATTRIBUTES_KEY_BADGING_CURVE:Ljava/lang/String; = "android.net.attributes.key.BADGING_CURVE"

.field public static final whitelist ATTRIBUTES_KEY_HAS_CAPTIVE_PORTAL:Ljava/lang/String; = "android.net.attributes.key.HAS_CAPTIVE_PORTAL"

.field public static final whitelist ATTRIBUTES_KEY_RANKING_SCORE_OFFSET:Ljava/lang/String; = "android.net.attributes.key.RANKING_SCORE_OFFSET"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final whitelist attributes:Landroid/os/Bundle;

.field public final whitelist meteredHint:Z

.field public final whitelist networkKey:Landroid/net/NetworkKey;

.field public final whitelist rssiCurve:Landroid/net/RssiCurve;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 309
    new-instance v0, Landroid/net/ScoredNetwork$1;

    invoke-direct {v0}, Landroid/net/ScoredNetwork$1;-><init>()V

    sput-object v0, Landroid/net/ScoredNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;)V
    .registers 4
    .param p1, "networkKey"    # Landroid/net/NetworkKey;
    .param p2, "rssiCurve"    # Landroid/net/RssiCurve;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/ScoredNetwork;-><init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;Z)V

    .line 117
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;Z)V
    .registers 5
    .param p1, "networkKey"    # Landroid/net/NetworkKey;
    .param p2, "rssiCurve"    # Landroid/net/RssiCurve;
    .param p3, "meteredHint"    # Z

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/ScoredNetwork;-><init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;ZLandroid/os/Bundle;)V

    .line 134
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;ZLandroid/os/Bundle;)V
    .registers 5
    .param p1, "networkKey"    # Landroid/net/NetworkKey;
    .param p2, "rssiCurve"    # Landroid/net/RssiCurve;
    .param p3, "meteredHint"    # Z
    .param p4, "attributes"    # Landroid/os/Bundle;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    .line 153
    iput-object p2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    .line 154
    iput-boolean p3, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    .line 155
    iput-object p4, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 156
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    sget-object v0, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkKey;

    iput-object v0, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 161
    sget-object v0, Landroid/net/RssiCurve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RssiCurve;

    iput-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    goto :goto_22

    .line 163
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    .line 165
    :goto_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    iput-boolean v1, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 167
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/ScoredNetwork-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/ScoredNetwork;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o bundleEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 11
    .param p1, "bundle1"    # Landroid/os/Bundle;
    .param p2, "bundle2"    # Landroid/os/Bundle;

    .line 201
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 202
    return v0

    .line 204
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    if-nez p2, :cond_a

    goto :goto_3a

    .line 207
    :cond_a
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 208
    return v1

    .line 210
    :cond_15
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 211
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 212
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 213
    .local v5, "value1":Ljava/lang/Object;
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 214
    .local v6, "value2":Ljava/lang/Object;
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    .line 215
    return v1

    .line 217
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value1":Ljava/lang/Object;
    .end local v6    # "value2":Ljava/lang/Object;
    :cond_38
    goto :goto_1d

    .line 218
    :cond_39
    return v0

    .line 205
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3a
    :goto_3a
    return v1
.end method


# virtual methods
.method public whitelist calculateBadge(I)I
    .registers 5
    .param p1, "rssi"    # I

    .line 300
    iget-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    const-string v1, "android.net.attributes.key.BADGING_CURVE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 301
    iget-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    const-class v2, Landroid/net/RssiCurve;

    .line 302
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RssiCurve;

    .line 303
    .local v0, "badgingCurve":Landroid/net/RssiCurve;
    invoke-virtual {v0, p1}, Landroid/net/RssiCurve;->lookupScore(I)B

    move-result v1

    return v1

    .line 306
    .end local v0    # "badgingCurve":Landroid/net/RssiCurve;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o calculateRankingScore(I)I
    .registers 6
    .param p1, "rssi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Landroid/net/ScoredNetwork;->hasRankingScore()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "offset":I
    iget-object v1, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 278
    iget-object v1, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    const-string v3, "android.net.attributes.key.RANKING_SCORE_OFFSET"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 281
    :cond_15
    iget-object v1, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-nez v1, :cond_1a

    goto :goto_22

    :cond_1a
    iget-object v1, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    invoke-virtual {v1, p1}, Landroid/net/RssiCurve;->lookupScore(I)B

    move-result v1

    shl-int/lit8 v2, v1, 0x8

    .line 284
    .local v2, "score":I
    :goto_22
    :try_start_22
    invoke-static {v2, v0}, Ljava/lang/Math;->addExact(II)I

    move-result v1
    :try_end_26
    .catch Ljava/lang/ArithmeticException; {:try_start_22 .. :try_end_26} :catch_27

    return v1

    .line 285
    :catch_27
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/ArithmeticException;
    if-gez v2, :cond_2d

    const/high16 v3, -0x80000000

    goto :goto_30

    :cond_2d
    const v3, 0x7fffffff

    :goto_30
    return v3

    .line 271
    .end local v0    # "offset":I
    .end local v1    # "e":Ljava/lang/ArithmeticException;
    .end local v2    # "score":I
    :cond_31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Either rssiCurve or rankingScoreOffset is required to calculate the ranking score"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 189
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 190
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_48

    .line 192
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/ScoredNetwork;

    .line 194
    .local v2, "that":Landroid/net/ScoredNetwork;
    iget-object v3, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v4, v2, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iget-object v4, v2, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    .line 195
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-boolean v3, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    .line 196
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/net/ScoredNetwork;->meteredHint:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    iget-object v4, v2, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 197
    invoke-direct {p0, v3, v4}, Landroid/net/ScoredNetwork;->bundleEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_47

    :cond_46
    move v0, v1

    .line 194
    :goto_47
    return v0

    .line 190
    .end local v2    # "that":Landroid/net/ScoredNetwork;
    :cond_48
    :goto_48
    return v1
.end method

.method public greylist-max-o hasRankingScore()Z
    .registers 3

    .line 248
    iget-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    .line 250
    const-string v1, "android.net.attributes.key.RANKING_SCORE_OFFSET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 248
    :goto_16
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 223
    iget-object v0, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v1, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iget-boolean v2, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScoredNetwork{networkKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssiCurve="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", meteredHint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    if-eqz v1, :cond_56

    iget-object v1, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", attributes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_56
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 176
    iget-object v0, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 177
    iget-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v0, :cond_13

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 179
    iget-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    invoke-virtual {v0, p1, p2}, Landroid/net/RssiCurve;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 181
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 183
    :goto_17
    iget-boolean v0, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 184
    iget-object v0, p0, Landroid/net/ScoredNetwork;->attributes:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 185
    return-void
.end method
