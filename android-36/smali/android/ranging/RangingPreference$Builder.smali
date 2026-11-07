.class public final Landroid/ranging/RangingPreference$Builder;
.super Ljava/lang/Object;
.source "RangingPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/RangingPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mDeviceRole:I

.field private final blacklist mRangingConfig:Landroid/ranging/RangingConfig;

.field private blacklist mSessionConfig:Landroid/ranging/SessionConfig;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceRole(Landroid/ranging/RangingPreference$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/RangingPreference$Builder;->mDeviceRole:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRangingConfig(Landroid/ranging/RangingPreference$Builder;)Landroid/ranging/RangingConfig;
    .registers 1

    iget-object p0, p0, Landroid/ranging/RangingPreference$Builder;->mRangingConfig:Landroid/ranging/RangingConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionConfig(Landroid/ranging/RangingPreference$Builder;)Landroid/ranging/SessionConfig;
    .registers 1

    iget-object p0, p0, Landroid/ranging/RangingPreference$Builder;->mSessionConfig:Landroid/ranging/SessionConfig;

    return-object p0
.end method

.method public constructor whitelist <init>(ILandroid/ranging/RangingConfig;)V
    .registers 4
    .param p1, "role"    # I
    .param p2, "rangingConfig"    # Landroid/ranging/RangingConfig;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Landroid/ranging/SessionConfig$Builder;

    invoke-direct {v0}, Landroid/ranging/SessionConfig$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/ranging/SessionConfig$Builder;->build()Landroid/ranging/SessionConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/RangingPreference$Builder;->mSessionConfig:Landroid/ranging/SessionConfig;

    .line 183
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iput p1, p0, Landroid/ranging/RangingPreference$Builder;->mDeviceRole:I

    .line 185
    iput-object p2, p0, Landroid/ranging/RangingPreference$Builder;->mRangingConfig:Landroid/ranging/RangingConfig;

    .line 186
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/RangingPreference;
    .registers 3

    .line 214
    new-instance v0, Landroid/ranging/RangingPreference;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/RangingPreference;-><init>(Landroid/ranging/RangingPreference$Builder;Landroid/ranging/RangingPreference-IA;)V

    return-object v0
.end method

.method public whitelist setSessionConfig(Landroid/ranging/SessionConfig;)Landroid/ranging/RangingPreference$Builder;
    .registers 2
    .param p1, "config"    # Landroid/ranging/SessionConfig;

    .line 200
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iput-object p1, p0, Landroid/ranging/RangingPreference$Builder;->mSessionConfig:Landroid/ranging/SessionConfig;

    .line 202
    return-object p0
.end method
