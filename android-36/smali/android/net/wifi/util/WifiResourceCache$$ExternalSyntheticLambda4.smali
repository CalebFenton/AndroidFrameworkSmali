.class public final synthetic Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/util/WifiResourceCache;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/util/WifiResourceCache;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda4;->f$0:Landroid/net/wifi/util/WifiResourceCache;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/util/WifiResourceCache$$ExternalSyntheticLambda4;->f$0:Landroid/net/wifi/util/WifiResourceCache;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/net/wifi/util/WifiResourceCache;->$r8$lambda$8mae3sFbJxqNfTKwR7B25lrTHVE(Landroid/net/wifi/util/WifiResourceCache;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
