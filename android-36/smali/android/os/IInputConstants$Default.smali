.class public Landroid/os/IInputConstants$Default;
.super Ljava/lang/Object;
.source "IInputConstants.java"

# interfaces
.implements Landroid/os/IInputConstants;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInputConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method
