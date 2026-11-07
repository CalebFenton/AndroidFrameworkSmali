.class Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;
.super Landroid/bluetooth/IBluetoothOobDataCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedOobDataCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/bluetooth/BluetoothAdapter$OobDataCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$-qu8vMBMPXpcxEYsgWbUiq7-6Hw(Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;ILandroid/bluetooth/OobData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->lambda$onOobData$0(ILandroid/bluetooth/OobData;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vikeB-4tA-kWNnFiOOcZMaiaYfY(Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->lambda$onError$1(I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter$OobDataCallback;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$OobDataCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 3811
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothOobDataCallback$Stub;-><init>()V

    .line 3812
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3813
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3814
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->mCallback:Landroid/bluetooth/BluetoothAdapter$OobDataCallback;

    .line 3815
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3816
    return-void
.end method

.method private synthetic blacklist lambda$onError$1(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 3823
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->mCallback:Landroid/bluetooth/BluetoothAdapter$OobDataCallback;

    invoke-interface {v0, p1}, Landroid/bluetooth/BluetoothAdapter$OobDataCallback;->onError(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onOobData$0(ILandroid/bluetooth/OobData;)V
    .registers 4
    .param p1, "transport"    # I
    .param p2, "oobData"    # Landroid/bluetooth/OobData;

    .line 3819
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->mCallback:Landroid/bluetooth/BluetoothAdapter$OobDataCallback;

    invoke-interface {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$OobDataCallback;->onOobData(ILandroid/bluetooth/OobData;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 3823
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;I)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 3824
    return-void
.end method

.method public blacklist onOobData(ILandroid/bluetooth/OobData;)V
    .registers 5
    .param p1, "transport"    # I
    .param p2, "oobData"    # Landroid/bluetooth/OobData;

    .line 3819
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;ILandroid/bluetooth/OobData;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 3820
    return-void
.end method
