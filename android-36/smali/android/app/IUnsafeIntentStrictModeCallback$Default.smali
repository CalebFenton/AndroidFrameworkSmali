.class public Landroid/app/IUnsafeIntentStrictModeCallback$Default;
.super Ljava/lang/Object;
.source "IUnsafeIntentStrictModeCallback.java"

# interfaces
.implements Landroid/app/IUnsafeIntentStrictModeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUnsafeIntentStrictModeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onUnsafeIntent(ILandroid/content/Intent;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
