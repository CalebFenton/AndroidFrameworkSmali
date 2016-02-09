.class Lcom/android/server/connectivity/Vpn$Connection;
.super Ljava/lang/Object;
.source "Vpn.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method private constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;

    #@0
    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$Connection;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;)V

    #@3
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 774
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;

    #@2
    .line 773
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 779
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;

    #@3
    .line 778
    return-void
.end method
