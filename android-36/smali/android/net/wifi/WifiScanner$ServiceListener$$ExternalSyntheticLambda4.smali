.class public final synthetic Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/WifiScanner$ServiceListener;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/WifiScanner$ServiceListener;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda4;->f$0:Landroid/net/wifi/WifiScanner$ServiceListener;

    iput p2, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda4;->f$0:Landroid/net/wifi/WifiScanner$ServiceListener;

    iget v1, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ServiceListener$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiScanner$ServiceListener;->$r8$lambda$uZRC5xA1MlhtGeoCR6Be_0o2Lb8(Landroid/net/wifi/WifiScanner$ServiceListener;ILjava/lang/String;)V

    return-void
.end method
