.class public final Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory$SwapLoggerForTesting;
.super Ljava/lang/Object;
.source "CronetLoggerFactory.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwapLoggerForTesting"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;)V
    .registers 2
    .param p1, "testLogger"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->-$$Nest$smsetLoggerForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;)V

    .line 67
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->-$$Nest$smsetLoggerForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;)V

    .line 73
    return-void
.end method
