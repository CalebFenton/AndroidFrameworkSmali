.class public final Landroid/os/UserBatteryConsumer$Builder;
.super Landroid/os/BatteryConsumer$BaseBuilder;
.source "UserBatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UserBatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/BatteryConsumer$BaseBuilder<",
        "Landroid/os/UserBatteryConsumer$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mUidBatteryConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V
    .registers 8
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;
    .param p2, "userId"    # I
    .param p3, "minConsumedPowerThreshold"    # D

    .line 112
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V

    .line 113
    const/4 v0, 0x1

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 114
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist addConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->addConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->addConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUidBatteryConsumer(Landroid/os/UidBatteryConsumer$Builder;)V
    .registers 3
    .param p1, "uidBatteryConsumerBuilder"    # Landroid/os/UidBatteryConsumer$Builder;

    .line 125
    iget-object v0, p0, Landroid/os/UserBatteryConsumer$Builder;->mUidBatteryConsumers:Ljava/util/List;

    if-nez v0, :cond_b

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/UserBatteryConsumer$Builder;->mUidBatteryConsumers:Ljava/util/List;

    .line 128
    :cond_b
    iget-object v0, p0, Landroid/os/UserBatteryConsumer$Builder;->mUidBatteryConsumers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public bridge synthetic blacklist addUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->addUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist build()Landroid/os/UserBatteryConsumer;
    .registers 5

    .line 136
    iget-object v0, p0, Landroid/os/UserBatteryConsumer$Builder;->mUidBatteryConsumers:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 137
    iget-object v0, p0, Landroid/os/UserBatteryConsumer$Builder;->mUidBatteryConsumers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_20

    .line 138
    iget-object v1, p0, Landroid/os/UserBatteryConsumer$Builder;->mUidBatteryConsumers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    .line 139
    .local v1, "uidBatteryConsumer":Landroid/os/UidBatteryConsumer$Builder;
    iget-object v2, p0, Landroid/os/UserBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    iget-object v3, v1, Landroid/os/UidBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v2, v3}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/PowerComponents$Builder;)V

    .line 137
    .end local v1    # "uidBatteryConsumer":Landroid/os/UidBatteryConsumer$Builder;
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 143
    .end local v0    # "i":I
    :cond_20
    new-instance v0, Landroid/os/UserBatteryConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/UserBatteryConsumer;-><init>(Landroid/os/UserBatteryConsumer$Builder;Landroid/os/UserBatteryConsumer-IA;)V

    return-object v0
.end method

.method public bridge synthetic blacklist getKey(II)Landroid/os/BatteryConsumer$Key;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 108
    invoke-super {p0, p1, p2}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getKey(IIII)Landroid/os/BatteryConsumer$Key;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 108
    invoke-super {p0, p1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getTotalPower()D
    .registers 3

    .line 108
    invoke-super {p0}, Landroid/os/BatteryConsumer$BaseBuilder;->getTotalPower()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic blacklist setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method
