.class final Ldalvik/system/CloseGuard$DefaultReporter;
.super Ljava/lang/Object;
.source "CloseGuard.java"

# interfaces
.implements Ldalvik/system/CloseGuard$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/CloseGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultReporter"
.end annotation


# direct methods
.method private constructor greylist <init>()V
    .registers 1

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ldalvik/system/CloseGuard-IA;)V
    .registers 2

    invoke-direct {p0}, Ldalvik/system/CloseGuard$DefaultReporter;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist test-api report(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 395
    invoke-static {p1}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public greylist-max-o test-api report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "allocationSite"    # Ljava/lang/Throwable;

    .line 390
    invoke-static {p1, p2}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    return-void
.end method
