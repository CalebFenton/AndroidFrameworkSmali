.class public Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;
.super Ljava/lang/Object;
.source "IkeConnectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final blacklist alarmCmd:I

.field public final blacklist callback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

.field public final blacklist ikeHandler:Landroid/os/Handler;

.field public final blacklist ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

.field public final blacklist ikeSessionId:I

.field public final blacklist sendKeepaliveCmd:I


# direct methods
.method public constructor blacklist <init>(Landroid/os/Handler;Landroid/net/ipsec/ike/IkeSessionParams;IIILcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;)V
    .registers 7
    .param p1, "ikeHandler"    # Landroid/os/Handler;
    .param p2, "ikeParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p3, "ikeSessionId"    # I
    .param p4, "alarmCmd"    # I
    .param p5, "sendKeepaliveCmd"    # I
    .param p6, "callback"    # Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeHandler:Landroid/os/Handler;

    .line 277
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 278
    iput p3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeSessionId:I

    .line 279
    iput p4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->alarmCmd:I

    .line 280
    iput p5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->sendKeepaliveCmd:I

    .line 281
    iput-object p6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->callback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    .line 282
    return-void
.end method
