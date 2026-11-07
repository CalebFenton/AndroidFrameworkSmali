.class public abstract Landroid/telecom/Call$Listener;
.super Landroid/telecom/Call$Callback;
.source "Call.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1673
    invoke-direct {p0}, Landroid/telecom/Call$Callback;-><init>()V

    return-void
.end method
