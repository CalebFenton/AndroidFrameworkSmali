.class public abstract Landroid/app/KeyguardManager$KeyguardDismissCallback;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KeyguardDismissCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDismissCancelled()V
    .registers 1

    .line 606
    return-void
.end method

.method public whitelist onDismissError()V
    .registers 1

    .line 595
    return-void
.end method

.method public whitelist onDismissSucceeded()V
    .registers 1

    .line 600
    return-void
.end method
