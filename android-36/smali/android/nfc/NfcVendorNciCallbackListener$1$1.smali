.class Landroid/nfc/NfcVendorNciCallbackListener$1$1;
.super Ljava/lang/Object;
.source "NfcVendorNciCallbackListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcVendorNciCallbackListener$1;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/nfc/NfcVendorNciCallbackListener$1;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$p9lbRzLldAKI2oPUT4oc034Ka1w(Landroid/nfc/NfcVendorNciCallbackListener$1$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/nfc/NfcVendorNciCallbackListener$1$1;->lambda$run$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/nfc/NfcVendorNciCallbackListener$1;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$1"    # Landroid/nfc/NfcVendorNciCallbackListener$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Landroid/nfc/NfcVendorNciCallbackListener$1$1;->this$1:Landroid/nfc/NfcVendorNciCallbackListener$1;

    iput-object p2, p0, Landroid/nfc/NfcVendorNciCallbackListener$1$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$run$0()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-static {}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcVendorNciCallbackListener$1$1;->this$1:Landroid/nfc/NfcVendorNciCallbackListener$1;

    iget-object v1, v1, Landroid/nfc/NfcVendorNciCallbackListener$1;->this$0:Landroid/nfc/NfcVendorNciCallbackListener;

    .line 56
    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapter;->registerVendorExtensionCallback(Landroid/nfc/INfcVendorNciCallback;)V

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 52
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_1c

    .line 53
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcVendorNciCallbackListener$1$1;->this$1:Landroid/nfc/NfcVendorNciCallbackListener$1;

    iget-object v0, v0, Landroid/nfc/NfcVendorNciCallbackListener$1;->this$0:Landroid/nfc/NfcVendorNciCallbackListener;

    invoke-static {v0}, Landroid/nfc/NfcVendorNciCallbackListener;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcVendorNciCallbackListener;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 54
    new-instance v0, Landroid/nfc/NfcVendorNciCallbackListener$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/nfc/NfcVendorNciCallbackListener$1$1$$ExternalSyntheticLambda0;-><init>(Landroid/nfc/NfcVendorNciCallbackListener$1$1;)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 59
    :cond_17
    monitor-exit p0

    .line 62
    goto :goto_24

    .line 59
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    .end local p0    # "this":Landroid/nfc/NfcVendorNciCallbackListener$1$1;
    :try_start_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    .line 60
    .restart local p0    # "this":Landroid/nfc/NfcVendorNciCallbackListener$1$1;
    :catchall_1c
    move-exception v0

    .line 61
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/nfc/NfcVendorNciCallbackListener$1$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_24
    return-void
.end method
