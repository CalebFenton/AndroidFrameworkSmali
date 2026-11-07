.class public Landroid/net/NetworkIdentity;
.super Ljava/lang/Object;
.source "NetworkIdentity.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkIdentity$Builder;,
        Landroid/net/NetworkIdentity$OemManaged;
    }
.end annotation


# static fields
.field private static final blacklist MAX_NETWORK_TYPE:I = 0x12

.field private static final blacklist MIN_NETWORK_TYPE:I = 0x0

.field public static final blacklist OEM_NONE:I = 0x0

.field public static final blacklist OEM_PAID:I = 0x1

.field public static final blacklist OEM_PRIVATE:I = 0x2

.field public static final greylist-max-o SUBTYPE_COMBINED:I = -0x1

.field private static final blacklist SUPPORTED_OEM_MANAGED_TYPES:J = 0x3L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NetworkIdentity"

.field static final blacklist TYPE_TEST:I = 0x12


# instance fields
.field final greylist-max-o mDefaultNetwork:Z

.field final greylist-max-o mMetered:Z

.field final blacklist mOemManaged:I

.field final blacklist mRatType:I

.field final greylist-max-o mRoaming:Z

.field final blacklist mSubId:I

.field final greylist-max-o mSubscriberId:Ljava/lang/String;

.field final greylist-max-o mType:I

.field final blacklist mWifiNetworkKey:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;ZZZII)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "ratType"    # I
    .param p3, "subscriberId"    # Ljava/lang/String;
    .param p4, "wifiNetworkKey"    # Ljava/lang/String;
    .param p5, "roaming"    # Z
    .param p6, "metered"    # Z
    .param p7, "defaultNetwork"    # Z
    .param p8, "oemManaged"    # I
    .param p9, "subId"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Landroid/net/NetworkIdentity;->mType:I

    .line 110
    iput p2, p0, Landroid/net/NetworkIdentity;->mRatType:I

    .line 111
    iput-object p3, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Landroid/net/NetworkIdentity;->mWifiNetworkKey:Ljava/lang/String;

    .line 113
    iput-boolean p5, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    .line 114
    iput-boolean p6, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    .line 115
    iput-boolean p7, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    .line 116
    iput p8, p0, Landroid/net/NetworkIdentity;->mOemManaged:I

    .line 117
    iput p9, p0, Landroid/net/NetworkIdentity;->mSubId:I

    .line 118
    return-void
.end method

.method public static blacklist buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkStateSnapshot;ZI)Landroid/net/NetworkIdentity;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "snapshot"    # Landroid/net/NetworkStateSnapshot;
    .param p2, "defaultNetwork"    # Z
    .param p3, "ratType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    new-instance v0, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v0}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 296
    invoke-virtual {v0, p1}, Landroid/net/NetworkIdentity$Builder;->setNetworkStateSnapshot(Landroid/net/NetworkStateSnapshot;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v0

    .line 298
    .local v0, "builder":Landroid/net/NetworkIdentity$Builder;
    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getLegacyType()I

    move-result v1

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-eq p3, v1, :cond_21

    .line 299
    invoke-virtual {v0, p3}, Landroid/net/NetworkIdentity$Builder;->setRatType(I)Landroid/net/NetworkIdentity$Builder;

    .line 301
    :cond_21
    invoke-virtual {v0}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist compare(Landroid/net/NetworkIdentity;Landroid/net/NetworkIdentity;)I
    .registers 5
    .param p0, "left"    # Landroid/net/NetworkIdentity;
    .param p1, "right"    # Landroid/net/NetworkIdentity;

    .line 323
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget v0, p0, Landroid/net/NetworkIdentity;->mType:I

    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 325
    .local v0, "res":I
    if-nez v0, :cond_15

    .line 326
    iget v1, p0, Landroid/net/NetworkIdentity;->mRatType:I

    iget v2, p1, Landroid/net/NetworkIdentity;->mRatType:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 328
    :cond_15
    if-nez v0, :cond_27

    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 329
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 331
    :cond_27
    if-nez v0, :cond_39

    iget-object v1, p0, Landroid/net/NetworkIdentity;->mWifiNetworkKey:Ljava/lang/String;

    if-eqz v1, :cond_39

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mWifiNetworkKey:Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 332
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mWifiNetworkKey:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/NetworkIdentity;->mWifiNetworkKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 334
    :cond_39
    if-nez v0, :cond_43

    .line 335
    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    iget-boolean v2, p1, Landroid/net/NetworkIdentity;->mRoaming:Z

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    .line 337
    :cond_43
    if-nez v0, :cond_4d

    .line 338
    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    iget-boolean v2, p1, Landroid/net/NetworkIdentity;->mMetered:Z

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    .line 340
    :cond_4d
    if-nez v0, :cond_57

    .line 341
    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    iget-boolean v2, p1, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    .line 343
    :cond_57
    if-nez v0, :cond_61

    .line 344
    iget v1, p0, Landroid/net/NetworkIdentity;->mOemManaged:I

    iget v2, p1, Landroid/net/NetworkIdentity;->mOemManaged:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 346
    :cond_61
    if-nez v0, :cond_6b

    .line 347
    iget v1, p0, Landroid/net/NetworkIdentity;->mSubId:I

    iget v2, p1, Landroid/net/NetworkIdentity;->mSubId:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 349
    :cond_6b
    return v0
.end method

.method public static blacklist getOemBitfield(Landroid/net/NetworkCapabilities;)I
    .registers 3
    .param p0, "nc"    # Landroid/net/NetworkCapabilities;

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "oemManaged":I
    const/16 v1, 0x16

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 312
    or-int/lit8 v0, v0, 0x1

    .line 314
    :cond_b
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 315
    or-int/lit8 v0, v0, 0x2

    .line 318
    :cond_15
    return v0
.end method

.method static blacklist getOemManagedNames(I)Ljava/lang/String;
    .registers 7
    .param p0, "oemManaged"    # I

    .line 173
    if-nez p0, :cond_5

    .line 174
    const-string v0, "OEM_NONE"

    return-object v0

    .line 176
    :cond_5
    int-to-long v0, p0

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    .line 177
    .local v0, "bitPositions":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v1, "oemManagedNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_21

    aget v4, v0, v3

    .line 179
    .local v4, "position":I
    const/4 v5, 0x1

    shl-int/2addr v5, v4

    invoke-static {v5}, Landroid/net/NetworkIdentity;->nameOfOemManaged(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v4    # "position":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 181
    :cond_21
    const-string v2, ","

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist nameOfOemManaged(I)Ljava/lang/String;
    .registers 3
    .param p0, "oemManagedBit"    # I

    .line 185
    packed-switch p0, :pswitch_data_24

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :pswitch_1d
    const-string v0, "OEM_PRIVATE"

    return-object v0

    .line 187
    :pswitch_20
    const-string v0, "OEM_PAID"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 197
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 199
    .local v0, "start":J
    const-wide v2, 0x10500000001L

    iget v4, p0, Landroid/net/NetworkIdentity;->mType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 203
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 204
    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 205
    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 206
    const-wide v2, 0x10500000007L

    iget v4, p0, Landroid/net/NetworkIdentity;->mOemManaged:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 208
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 209
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 128
    instance-of v0, p1, Landroid/net/NetworkIdentity;

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    .line 129
    move-object v0, p1

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 130
    .local v0, "ident":Landroid/net/NetworkIdentity;
    iget v2, p0, Landroid/net/NetworkIdentity;->mType:I

    iget v3, v0, Landroid/net/NetworkIdentity;->mType:I

    if-ne v2, v3, :cond_48

    iget v2, p0, Landroid/net/NetworkIdentity;->mRatType:I

    iget v3, v0, Landroid/net/NetworkIdentity;->mRatType:I

    if-ne v2, v3, :cond_48

    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    iget-boolean v3, v0, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-ne v2, v3, :cond_48

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    .line 131
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mWifiNetworkKey:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkIdentity;->mWifiNetworkKey:Ljava/lang/String;

    .line 132
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    iget-boolean v3, v0, Landroid/net/NetworkIdentity;->mMetered:Z

    if-ne v2, v3, :cond_48

    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    iget-boolean v3, v0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    if-ne v2, v3, :cond_48

    iget v2, p0, Landroid/net/NetworkIdentity;->mOemManaged:I

    iget v3, v0, Landroid/net/NetworkIdentity;->mOemManaged:I

    if-ne v2, v3, :cond_48

    iget v2, p0, Landroid/net/NetworkIdentity;->mSubId:I

    iget v3, v0, Landroid/net/NetworkIdentity;->mSubId:I

    if-ne v2, v3, :cond_48

    const/4 v1, 0x1

    goto :goto_49

    :cond_48
    nop

    .line 130
    :goto_49
    return v1

    .line 138
    .end local v0    # "ident":Landroid/net/NetworkIdentity;
    :cond_4a
    return v1
.end method

.method public greylist-max-o getDefaultNetwork()Z
    .registers 2

    .line 258
    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    return v0
.end method

.method public greylist-max-o getMetered()Z
    .registers 2

    .line 247
    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    return v0
.end method

.method public blacklist getOemManaged()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/net/NetworkIdentity;->mOemManaged:I

    return v0
.end method

.method public blacklist getRatType()I
    .registers 2

    .line 218
    iget v0, p0, Landroid/net/NetworkIdentity;->mRatType:I

    return v0
.end method

.method public greylist-max-o getRoaming()Z
    .registers 2

    .line 236
    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    return v0
.end method

.method public blacklist getSubId()I
    .registers 2

    .line 273
    iget v0, p0, Landroid/net/NetworkIdentity;->mSubId:I

    return v0
.end method

.method public greylist-max-o getSubscriberId()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getType()I
    .registers 2

    .line 213
    iget v0, p0, Landroid/net/NetworkIdentity;->mType:I

    return v0
.end method

.method public blacklist getWifiNetworkKey()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/net/NetworkIdentity;->mWifiNetworkKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 122
    iget v0, p0, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/net/NetworkIdentity;->mRatType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/NetworkIdentity;->mWifiNetworkKey:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    .line 123
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v0, p0, Landroid/net/NetworkIdentity;->mOemManaged:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/net/NetworkIdentity;->mSubId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isDefaultNetwork()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    return v0
.end method

.method public blacklist isMetered()Z
    .registers 2

    .line 252
    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    return v0
.end method

.method public blacklist isRoaming()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkIdentity;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ", ratType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v1, p0, Landroid/net/NetworkIdentity;->mRatType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_22

    .line 147
    const-string v1, "COMBINED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 149
    :cond_22
    iget v1, p0, Landroid/net/NetworkIdentity;->mRatType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    :goto_27
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    if-eqz v1, :cond_3a

    .line 152
    const-string v1, ", subscriberId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    .line 153
    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_3a
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mWifiNetworkKey:Ljava/lang/String;

    if-eqz v1, :cond_49

    .line 156
    const-string v1, ", wifiNetworkKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mWifiNetworkKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_49
    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-eqz v1, :cond_52

    .line 159
    const-string v1, ", ROAMING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_52
    const-string v1, ", metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, ", defaultNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ", oemManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkIdentity;->mOemManaged:I

    invoke-static {v2}, Landroid/net/NetworkIdentity;->getOemManagedNames(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkIdentity;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
