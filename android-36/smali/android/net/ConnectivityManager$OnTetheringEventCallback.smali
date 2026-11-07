.class public abstract Landroid/net/ConnectivityManager$OnTetheringEventCallback;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnTetheringEventCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 3278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onUpstreamChanged(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .line 3287
    return-void
.end method
