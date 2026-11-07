.class public final Landroid/net/ipsec/ike/IkeManager;
.super Ljava/lang/Object;
.source "IkeManager.java"


# static fields
.field private static final blacklist IKE_TAG:Ljava/lang/String; = "IKE"

.field private static final blacklist LOG_SENSITIVE:Z = false

.field private static blacklist sIkeLog:Lcom/android/internal/net/utils/Log;

.field private static blacklist sIkeMetrics:Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 31
    new-instance v0, Lcom/android/internal/net/utils/Log;

    const-string v1, "IKE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/utils/Log;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Landroid/net/ipsec/ike/IkeManager;->sIkeLog:Lcom/android/internal/net/utils/Log;

    .line 32
    new-instance v0, Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;-><init>()V

    sput-object v0, Landroid/net/ipsec/ike/IkeManager;->sIkeMetrics:Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getIkeLog()Lcom/android/internal/net/utils/Log;
    .registers 1

    .line 40
    sget-object v0, Landroid/net/ipsec/ike/IkeManager;->sIkeLog:Lcom/android/internal/net/utils/Log;

    return-object v0
.end method

.method public static blacklist getIkeMetrics()Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;
    .registers 1

    .line 69
    sget-object v0, Landroid/net/ipsec/ike/IkeManager;->sIkeMetrics:Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;

    return-object v0
.end method

.method public static blacklist resetIkeLog()V
    .registers 3

    .line 60
    new-instance v0, Lcom/android/internal/net/utils/Log;

    const-string v1, "IKE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/utils/Log;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Landroid/net/ipsec/ike/IkeManager;->sIkeLog:Lcom/android/internal/net/utils/Log;

    .line 61
    return-void
.end method

.method public static blacklist setIkeLog(Lcom/android/internal/net/utils/Log;)V
    .registers 1
    .param p0, "log"    # Lcom/android/internal/net/utils/Log;

    .line 50
    sput-object p0, Landroid/net/ipsec/ike/IkeManager;->sIkeLog:Lcom/android/internal/net/utils/Log;

    .line 51
    return-void
.end method

.method public static blacklist setIkeMetrics(Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;)V
    .registers 1
    .param p0, "ikeMetrics"    # Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;

    .line 79
    sput-object p0, Landroid/net/ipsec/ike/IkeManager;->sIkeMetrics:Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;

    .line 80
    return-void
.end method
