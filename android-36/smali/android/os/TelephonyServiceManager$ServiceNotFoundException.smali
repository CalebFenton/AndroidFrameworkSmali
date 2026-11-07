.class public Landroid/os/TelephonyServiceManager$ServiceNotFoundException;
.super Landroid/os/ServiceManager$ServiceNotFoundException;
.source "TelephonyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TelephonyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceNotFoundException"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    .line 107
    return-void
.end method
