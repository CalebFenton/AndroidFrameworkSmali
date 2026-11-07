.class public final Landroid/ranging/wifi/rtt/RttRangingParams$Builder;
.super Ljava/lang/Object;
.source "RttRangingParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/wifi/rtt/RttRangingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMatchFilter:[B

.field private blacklist mPeriodicRangingHwFeatureEnabled:Z

.field private blacklist mRangingUpdateRate:I

.field private blacklist mServiceName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMatchFilter(Landroid/ranging/wifi/rtt/RttRangingParams$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->mMatchFilter:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPeriodicRangingHwFeatureEnabled(Landroid/ranging/wifi/rtt/RttRangingParams$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->mPeriodicRangingHwFeatureEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRangingUpdateRate(Landroid/ranging/wifi/rtt/RttRangingParams$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->mRangingUpdateRate:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceName(Landroid/ranging/wifi/rtt/RttRangingParams$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-string v0, ""

    iput-object v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->mServiceName:Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->mMatchFilter:[B

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->mPeriodicRangingHwFeatureEnabled:Z

    .line 146
    const/4 v0, 0x1

    iput v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->mRangingUpdateRate:I

    .line 156
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iput-object p1, p0, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->mServiceName:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/wifi/rtt/RttRangingParams;
    .registers 3

    .line 212
    new-instance v0, Landroid/ranging/wifi/rtt/RttRangingParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/wifi/rtt/RttRangingParams;-><init>(Landroid/ranging/wifi/rtt/RttRangingParams$Builder;Landroid/ranging/wifi/rtt/RttRangingParams-IA;)V

    return-object v0
.end method

.method public whitelist setMatchFilter([B)Landroid/ranging/wifi/rtt/RttRangingParams$Builder;
    .registers 3
    .param p1, "matchFilter"    # [B

    .line 170
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->mMatchFilter:[B

    .line 172
    return-object p0
.end method

.method public whitelist setPeriodicRangingHwFeatureEnabled(Z)Landroid/ranging/wifi/rtt/RttRangingParams$Builder;
    .registers 2
    .param p1, "periodicRangingHwFeatureEnabled"    # Z

    .line 201
    iput-boolean p1, p0, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->mPeriodicRangingHwFeatureEnabled:Z

    .line 202
    return-object p0
.end method

.method public whitelist setRangingUpdateRate(I)Landroid/ranging/wifi/rtt/RttRangingParams$Builder;
    .registers 2
    .param p1, "updateRate"    # I

    .line 188
    iput p1, p0, Landroid/ranging/wifi/rtt/RttRangingParams$Builder;->mRangingUpdateRate:I

    .line 189
    return-object p0
.end method
