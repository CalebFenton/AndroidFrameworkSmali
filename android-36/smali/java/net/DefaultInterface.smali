.class Ljava/net/DefaultInterface;
.super Ljava/lang/Object;
.source "DefaultInterface.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getDefault()Ljava/net/NetworkInterface;
    .registers 1

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method
