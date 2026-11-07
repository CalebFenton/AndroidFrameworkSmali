.class public abstract Landroid/nearby/NearbyDevice;
.super Ljava/lang/Object;
.source "NearbyDevice.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/NearbyDevice$Medium;
    }
.end annotation


# instance fields
.field private final blacklist mMediums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mRssi:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;I)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "rssi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 58
    .local p2, "mediums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 60
    .local v1, "medium":I
    invoke-static {v1}, Landroid/nearby/NearbyDevice;->isValidMedium(I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not supported medium: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scan medium must be one of NearbyDevice#Medium."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 63
    .end local v1    # "medium":I
    goto :goto_7

    .line 64
    :cond_38
    iput-object p1, p0, Landroid/nearby/NearbyDevice;->mName:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Landroid/nearby/NearbyDevice;->mMediums:Ljava/util/List;

    .line 66
    iput p3, p0, Landroid/nearby/NearbyDevice;->mRssi:I

    .line 67
    return-void
.end method

.method public static whitelist isValidMedium(I)Z
    .registers 3
    .param p0, "medium"    # I

    .line 86
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method static blacklist mediumToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "medium"    # I

    .line 70
    packed-switch p0, :pswitch_data_c

    .line 76
    const-string v0, "Unknown"

    return-object v0

    .line 74
    :pswitch_6
    const-string v0, "Bluetooth Classic"

    return-object v0

    .line 72
    :pswitch_9
    const-string v0, "BLE"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 130
    instance-of v0, p1, Landroid/nearby/NearbyDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 131
    return v1

    .line 133
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/nearby/NearbyDevice;

    .line 134
    .local v0, "otherDevice":Landroid/nearby/NearbyDevice;
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/nearby/NearbyDevice;->mMediums:Ljava/util/List;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 135
    .local v2, "mediumSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, v0, Landroid/nearby/NearbyDevice;->mMediums:Ljava/util/List;

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 136
    .local v3, "otherMediumSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 137
    return v1

    .line 140
    :cond_1e
    iget-object v4, p0, Landroid/nearby/NearbyDevice;->mName:Ljava/lang/String;

    iget-object v5, v0, Landroid/nearby/NearbyDevice;->mName:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget v4, p0, Landroid/nearby/NearbyDevice;->mRssi:I

    iget v5, v0, Landroid/nearby/NearbyDevice;->mRssi:I

    if-ne v4, v5, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    return v1
.end method

.method public whitelist getMediums()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroid/nearby/NearbyDevice;->mMediums:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/nearby/NearbyDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRssi()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/nearby/NearbyDevice;->mRssi:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 145
    iget-object v0, p0, Landroid/nearby/NearbyDevice;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/nearby/NearbyDevice;->mMediums:Ljava/util/List;

    iget v2, p0, Landroid/nearby/NearbyDevice;->mRssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "NearbyDevice ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Landroid/nearby/NearbyDevice;->mName:Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/nearby/NearbyDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 117
    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nearby/NearbyDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_27
    const-string v1, "medium={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Landroid/nearby/NearbyDevice;->mMediums:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 121
    .local v2, "medium":I
    invoke-static {v2}, Landroid/nearby/NearbyDevice;->mediumToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .end local v2    # "medium":I
    goto :goto_32

    .line 123
    :cond_4a
    const-string v1, "} rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nearby/NearbyDevice;->mRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
