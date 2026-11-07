.class public abstract Landroid/net/NetworkSpecifier;
.super Ljava/lang/Object;
.source "NetworkSpecifier.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 3
    .param p1, "other"    # Landroid/net/NetworkSpecifier;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist redact()Landroid/net/NetworkSpecifier;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 70
    return-object p0
.end method
