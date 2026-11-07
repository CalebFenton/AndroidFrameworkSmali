.class public Landroid/nfc/RoutingStatus;
.super Ljava/lang/Object;
.source "RoutingStatus.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDefaultIsoDepRoute:I

.field private final blacklist mDefaultOffHostRoute:I

.field private final blacklist mDefaultRoute:I


# direct methods
.method constructor blacklist <init>(III)V
    .registers 4
    .param p1, "mDefaultRoute"    # I
    .param p2, "mDefaultIsoDepRoute"    # I
    .param p3, "mDefaultOffHostRoute"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/nfc/RoutingStatus;->mDefaultRoute:I

    .line 39
    iput p2, p0, Landroid/nfc/RoutingStatus;->mDefaultIsoDepRoute:I

    .line 40
    iput p3, p0, Landroid/nfc/RoutingStatus;->mDefaultOffHostRoute:I

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist getDefaultIsoDepRoute()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/nfc/RoutingStatus;->mDefaultIsoDepRoute:I

    return v0
.end method

.method public whitelist getDefaultOffHostRoute()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/nfc/RoutingStatus;->mDefaultOffHostRoute:I

    return v0
.end method

.method public whitelist getDefaultRoute()I
    .registers 2

    .line 52
    iget v0, p0, Landroid/nfc/RoutingStatus;->mDefaultRoute:I

    return v0
.end method
