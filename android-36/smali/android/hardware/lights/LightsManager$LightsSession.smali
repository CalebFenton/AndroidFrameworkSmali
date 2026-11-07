.class public abstract Landroid/hardware/lights/LightsManager$LightsSession;
.super Ljava/lang/Object;
.source "LightsManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/lights/LightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LightsSession"
.end annotation


# instance fields
.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mToken:Landroid/os/IBinder;

    .line 114
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api close()V
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/hardware/lights/LightsManager$LightsSession;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract whitelist requestLights(Landroid/hardware/lights/LightsRequest;)V
.end method
