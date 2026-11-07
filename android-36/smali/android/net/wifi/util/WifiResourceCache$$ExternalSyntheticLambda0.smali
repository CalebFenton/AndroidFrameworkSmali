.class public final synthetic Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/util/WifiResourceCache;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/util/WifiResourceCache;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/util/WifiResourceCache;

    iput p2, p0, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/util/WifiResourceCache;

    iget v1, p0, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Landroid/net/wifi/util/WifiResourceCache;->$r8$lambda$hafyixE-M5wDgpdZJrQKc9Q78Tw(Landroid/net/wifi/util/WifiResourceCache;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
