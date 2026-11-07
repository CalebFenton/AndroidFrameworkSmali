.class Landroid/net/TrafficStats$1;
.super Ljava/lang/ThreadLocal;
.source "TrafficStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TrafficStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/net/TrafficStats$UidTag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 469
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist initialValue()Landroid/net/TrafficStats$UidTag;
    .registers 3

    .line 472
    new-instance v0, Landroid/net/TrafficStats$UidTag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/TrafficStats$UidTag;-><init>(Landroid/net/TrafficStats-IA;)V

    return-object v0
.end method

.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 469
    invoke-virtual {p0}, Landroid/net/TrafficStats$1;->initialValue()Landroid/net/TrafficStats$UidTag;

    move-result-object v0

    return-object v0
.end method
