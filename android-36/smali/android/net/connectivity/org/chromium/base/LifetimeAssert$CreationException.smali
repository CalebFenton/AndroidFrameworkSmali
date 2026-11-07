.class Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;
.super Ljava/lang/RuntimeException;
.source "LifetimeAssert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/LifetimeAssert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreationException"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 51
    const-string v0, "vvv This is where object was created. vvv"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method
