.class public final synthetic Landroid/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/StringBuilder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/StackTraceElement;

    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothUtils;->lambda$inlineStackTrace$1(Ljava/lang/StringBuilder;Ljava/lang/StackTraceElement;)V

    return-void
.end method
