.class public final Landroid/net/metrics/DhcpClientEvent$Builder;
.super Ljava/lang/Object;
.source "DhcpClientEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/DhcpClientEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDurationMs:I

.field private blacklist mMsg:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/metrics/DhcpClientEvent;
    .registers 5

    .line 87
    new-instance v0, Landroid/net/metrics/DhcpClientEvent;

    iget-object v1, p0, Landroid/net/metrics/DhcpClientEvent$Builder;->mMsg:Ljava/lang/String;

    iget v2, p0, Landroid/net/metrics/DhcpClientEvent$Builder;->mDurationMs:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/metrics/DhcpClientEvent;-><init>(Ljava/lang/String;ILandroid/net/metrics/DhcpClientEvent-IA;)V

    return-object v0
.end method

.method public whitelist setDurationMs(I)Landroid/net/metrics/DhcpClientEvent$Builder;
    .registers 2
    .param p1, "durationMs"    # I

    .line 78
    iput p1, p0, Landroid/net/metrics/DhcpClientEvent$Builder;->mDurationMs:I

    .line 79
    return-object p0
.end method

.method public whitelist setMsg(Ljava/lang/String;)Landroid/net/metrics/DhcpClientEvent$Builder;
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Landroid/net/metrics/DhcpClientEvent$Builder;->mMsg:Ljava/lang/String;

    .line 70
    return-object p0
.end method
