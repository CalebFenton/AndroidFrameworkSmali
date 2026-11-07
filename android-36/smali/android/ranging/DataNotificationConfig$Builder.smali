.class public final Landroid/ranging/DataNotificationConfig$Builder;
.super Ljava/lang/Object;
.source "DataNotificationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/DataNotificationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mNotificationConfigType:I

.field private blacklist mProximityFarCm:I

.field private blacklist mProximityNearCm:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNotificationConfigType(Landroid/ranging/DataNotificationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/DataNotificationConfig$Builder;->mNotificationConfigType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProximityFarCm(Landroid/ranging/DataNotificationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/DataNotificationConfig$Builder;->mProximityFarCm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProximityNearCm(Landroid/ranging/DataNotificationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/DataNotificationConfig$Builder;->mProximityNearCm:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Landroid/ranging/DataNotificationConfig$Builder;->mNotificationConfigType:I

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Landroid/ranging/DataNotificationConfig$Builder;->mProximityNearCm:I

    .line 146
    const/16 v0, 0x4e20

    iput v0, p0, Landroid/ranging/DataNotificationConfig$Builder;->mProximityFarCm:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/DataNotificationConfig;
    .registers 3

    .line 195
    new-instance v0, Landroid/ranging/DataNotificationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/DataNotificationConfig;-><init>(Landroid/ranging/DataNotificationConfig$Builder;Landroid/ranging/DataNotificationConfig-IA;)V

    return-object v0
.end method

.method public whitelist setNotificationConfigType(I)Landroid/ranging/DataNotificationConfig$Builder;
    .registers 2
    .param p1, "config"    # I

    .line 157
    iput p1, p0, Landroid/ranging/DataNotificationConfig$Builder;->mNotificationConfigType:I

    .line 158
    return-object p0
.end method

.method public whitelist setProximityFarCm(I)Landroid/ranging/DataNotificationConfig$Builder;
    .registers 2
    .param p1, "proximityCm"    # I

    .line 183
    iput p1, p0, Landroid/ranging/DataNotificationConfig$Builder;->mProximityFarCm:I

    .line 184
    return-object p0
.end method

.method public whitelist setProximityNearCm(I)Landroid/ranging/DataNotificationConfig$Builder;
    .registers 2
    .param p1, "proximityCm"    # I

    .line 170
    iput p1, p0, Landroid/ranging/DataNotificationConfig$Builder;->mProximityNearCm:I

    .line 171
    return-object p0
.end method
