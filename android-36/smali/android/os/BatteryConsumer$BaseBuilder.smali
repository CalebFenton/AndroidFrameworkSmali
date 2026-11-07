.class public abstract Landroid/os/BatteryConsumer$BaseBuilder;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "BaseBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/BatteryConsumer$BaseBuilder<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final blacklist mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

.field protected final blacklist mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V
    .registers 8
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;
    .param p2, "consumerType"    # I
    .param p3, "minConsumedPowerThreshold"    # D

    .line 1022
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    iput-object p1, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 1024
    const/4 v0, 0x0

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 1026
    new-instance v0, Landroid/os/PowerComponents$Builder;

    invoke-direct {v0, p1, p3, p4}, Landroid/os/PowerComponents$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;D)V

    iput-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    .line 1027
    return-void
.end method


# virtual methods
.method public blacklist addConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 6
    .param p1, "componentId"    # I
    .param p2, "componentPower"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ID)TT;"
        }
    .end annotation

    .line 1097
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/PowerComponents$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/PowerComponents$Builder;

    .line 1099
    return-object p0
.end method

.method public blacklist addConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 7
    .param p1, "componentId"    # I
    .param p2, "componentPower"    # D
    .param p4, "powerModel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IDI)TT;"
        }
    .end annotation

    .line 1082
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/PowerComponents$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/PowerComponents$Builder;

    .line 1084
    return-object p0
.end method

.method public blacklist addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;
    .param p2, "componentPower"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryConsumer$Key;",
            "D)TT;"
        }
    .end annotation

    .line 1105
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerComponents$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/PowerComponents$Builder;

    .line 1106
    return-object p0
.end method

.method public blacklist addUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 6
    .param p1, "componentId"    # I
    .param p2, "componentUsageTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)TT;"
        }
    .end annotation

    .line 1139
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    .line 1140
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    .line 1139
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/PowerComponents$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;

    .line 1141
    return-object p0
.end method

.method public blacklist addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;
    .param p2, "componentUsageTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryConsumer$Key;",
            "J)TT;"
        }
    .end annotation

    .line 1147
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerComponents$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;

    .line 1148
    return-object p0
.end method

.method public blacklist getKey(II)Landroid/os/BatteryConsumer$Key;
    .registers 5
    .param p1, "componentId"    # I
    .param p2, "processState"    # I

    .line 1036
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey(IIII)Landroid/os/BatteryConsumer$Key;
    .registers 6
    .param p1, "componentId"    # I
    .param p2, "processState"    # I
    .param p3, "screenState"    # I
    .param p4, "powerState"    # I

    .line 1043
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .registers 3
    .param p1, "componentId"    # I

    .line 1031
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTotalPower()D
    .registers 3

    .line 1156
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0}, Landroid/os/PowerComponents$Builder;->getTotalPower()D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .param p1, "componentId"    # I
    .param p2, "componentPower"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ID)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1057
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 7
    .param p1, "componentId"    # I
    .param p2, "componentPower"    # D
    .param p4, "powerModel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IDI)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1073
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/PowerComponents$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/PowerComponents$Builder;

    .line 1075
    return-object p0
.end method

.method public blacklist setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 6
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;
    .param p2, "componentPower"    # D
    .param p4, "powerModel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryConsumer$Key;",
            "DI)TT;"
        }
    .end annotation

    .line 1090
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerComponents$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/PowerComponents$Builder;

    .line 1091
    return-object p0
.end method

.method public blacklist setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 6
    .param p1, "componentId"    # I
    .param p2, "componentUsageTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1122
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    .line 1123
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/PowerComponents$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;

    .line 1125
    return-object p0
.end method

.method public blacklist setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;
    .param p2, "componentUsageTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryConsumer$Key;",
            "J)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1132
    .local p0, "this":Landroid/os/BatteryConsumer$BaseBuilder;, "Landroid/os/BatteryConsumer$BaseBuilder<TT;>;"
    iget-object v0, p0, Landroid/os/BatteryConsumer$BaseBuilder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerComponents$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;

    .line 1133
    return-object p0
.end method
