.class final Landroid/bluetooth/BluetoothAdapter$ProfileConnection;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProfileConnection"
.end annotation


# instance fields
.field blacklist mConnected:Z

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final blacklist mProfile:I


# direct methods
.method public static synthetic blacklist $r8$lambda$HDwoFeNfP0_ttB6zwPp2_lRe_6w(Landroid/bluetooth/BluetoothAdapter$ProfileConnection;)V
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->lambda$disconnect$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hMSj6DHUqt7YX73SazN4nT4TGpw(Landroid/bluetooth/BluetoothAdapter$ProfileConnection;Landroid/bluetooth/BluetoothProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->lambda$connect$0(Landroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfile(Landroid/bluetooth/BluetoothAdapter$ProfileConnection;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mProfile:I

    return p0
.end method

.method constructor blacklist <init>(ILandroid/bluetooth/BluetoothProfile$ServiceListener;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "profile"    # I
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mConnected:Z

    .line 906
    iput p1, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mProfile:I

    .line 907
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 908
    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mExecutor:Ljava/util/concurrent/Executor;

    .line 909
    return-void
.end method

.method private synthetic blacklist lambda$connect$0(Landroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 916
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mProfile:I

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method private synthetic blacklist lambda$disconnect$1()V
    .registers 3

    .line 924
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mProfile:I

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    return-void
.end method


# virtual methods
.method blacklist connect(Landroid/bluetooth/BluetoothProfile;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 913
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mProfile:I

    invoke-static {v2}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mConnected:Z

    .line 915
    invoke-interface {p1, p2}, Landroid/bluetooth/BluetoothProfile;->onServiceConnected(Landroid/os/IBinder;)V

    .line 916
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$ProfileConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/BluetoothAdapter$ProfileConnection$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothAdapter$ProfileConnection;Landroid/bluetooth/BluetoothProfile;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 917
    return-void
.end method

.method blacklist disconnect(Landroid/bluetooth/BluetoothProfile;)V
    .registers 5
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 921
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mProfile:I

    invoke-static {v2}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mConnected:Z

    .line 923
    invoke-interface {p1}, Landroid/bluetooth/BluetoothProfile;->onServiceDisconnected()V

    .line 924
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$ProfileConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$ProfileConnection$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothAdapter$ProfileConnection;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 925
    return-void
.end method
