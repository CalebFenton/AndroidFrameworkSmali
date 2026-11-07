.class public abstract Landroid/net/ConnectivityManager$OnStartTetheringCallback;
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
    name = "OnStartTetheringCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 3165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTetheringFailed()V
    .registers 1

    .line 3174
    return-void
.end method

.method public whitelist onTetheringStarted()V
    .registers 1

    .line 3169
    return-void
.end method
