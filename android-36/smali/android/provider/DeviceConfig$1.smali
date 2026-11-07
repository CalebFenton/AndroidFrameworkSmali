.class Landroid/provider/DeviceConfig$1;
.super Landroid/database/ContentObserver;
.source "DeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/provider/DeviceConfig;->incrementNamespace(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "arg1"    # Landroid/os/Handler;

    .line 1726
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1729
    if-eqz p2, :cond_5

    .line 1730
    invoke-static {p2}, Landroid/provider/DeviceConfig;->-$$Nest$smhandleChange(Landroid/net/Uri;)V

    .line 1732
    :cond_5
    return-void
.end method
