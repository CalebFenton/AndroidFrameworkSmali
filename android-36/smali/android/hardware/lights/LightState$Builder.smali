.class public final Landroid/hardware/lights/LightState$Builder;
.super Ljava/lang/Object;
.source "LightState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/lights/LightState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsForPlayerId:Z

.field private blacklist mValue:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/lights/LightState$Builder;->mValue:I

    .line 78
    iput-boolean v0, p0, Landroid/hardware/lights/LightState$Builder;->mIsForPlayerId:Z

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/lights/LightState;
    .registers 4

    .line 118
    iget-boolean v0, p0, Landroid/hardware/lights/LightState$Builder;->mIsForPlayerId:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 119
    new-instance v0, Landroid/hardware/lights/LightState;

    iget v2, p0, Landroid/hardware/lights/LightState$Builder;->mValue:I

    invoke-direct {v0, v2, v1}, Landroid/hardware/lights/LightState;-><init>(II)V

    return-object v0

    .line 121
    :cond_d
    new-instance v0, Landroid/hardware/lights/LightState;

    iget v2, p0, Landroid/hardware/lights/LightState$Builder;->mValue:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/lights/LightState;-><init>(II)V

    return-object v0
.end method

.method public whitelist setColor(I)Landroid/hardware/lights/LightState$Builder;
    .registers 3
    .param p1, "color"    # I

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/lights/LightState$Builder;->mIsForPlayerId:Z

    .line 92
    iput p1, p0, Landroid/hardware/lights/LightState$Builder;->mValue:I

    .line 93
    return-object p0
.end method

.method public whitelist setPlayerId(I)Landroid/hardware/lights/LightState$Builder;
    .registers 3
    .param p1, "playerId"    # I

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/lights/LightState$Builder;->mIsForPlayerId:Z

    .line 107
    iput p1, p0, Landroid/hardware/lights/LightState$Builder;->mValue:I

    .line 108
    return-object p0
.end method
