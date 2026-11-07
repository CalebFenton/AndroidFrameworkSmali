.class public final Landroid/hardware/devicestate/DeviceStateRequest;
.super Ljava/lang/Object;
.source "DeviceStateRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateRequest$Builder;,
        Landroid/hardware/devicestate/DeviceStateRequest$Callback;,
        Landroid/hardware/devicestate/DeviceStateRequest$RequestFlags;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_CANCEL_WHEN_BASE_CHANGES:I = 0x1


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mRequestedState:I


# direct methods
.method private constructor blacklist <init>(II)V
    .registers 3
    .param p1, "requestedState"    # I
    .param p2, "flags"    # I

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Landroid/hardware/devicestate/DeviceStateRequest;->mRequestedState:I

    .line 151
    iput p2, p0, Landroid/hardware/devicestate/DeviceStateRequest;->mFlags:I

    .line 152
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/hardware/devicestate/DeviceStateRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/devicestate/DeviceStateRequest;-><init>(II)V

    return-void
.end method

.method public static blacklist newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;
    .registers 3
    .param p0, "requestedState"    # I

    .line 76
    new-instance v0, Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;-><init>(ILandroid/hardware/devicestate/DeviceStateRequest-IA;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getFlags()I
    .registers 2

    .line 160
    iget v0, p0, Landroid/hardware/devicestate/DeviceStateRequest;->mFlags:I

    return v0
.end method

.method public blacklist getState()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/hardware/devicestate/DeviceStateRequest;->mRequestedState:I

    return v0
.end method
