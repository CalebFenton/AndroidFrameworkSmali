.class Landroid/net/ip/IpManager$MessageHandlingLogger;
.super Ljava/lang/Object;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandlingLogger"
.end annotation


# instance fields
.field public processedInState:Ljava/lang/String;

.field public receivedInState:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/IpManager$MessageHandlingLogger;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/net/ip/IpManager$MessageHandlingLogger;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V
    .locals 1
    .param p1, "processedIn"    # Lcom/android/internal/util/State;
    .param p2, "receivedIn"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    .line 1370
    invoke-virtual {p1}, Lcom/android/internal/util/State;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/net/ip/IpManager$MessageHandlingLogger;->processedInState:Ljava/lang/String;

    #@a
    .line 1371
    invoke-interface {p2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/net/ip/IpManager$MessageHandlingLogger;->receivedInState:Ljava/lang/String;

    #@10
    .line 1369
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1365
    iput-object v0, p0, Landroid/net/ip/IpManager$MessageHandlingLogger;->processedInState:Ljava/lang/String;

    #@3
    .line 1366
    iput-object v0, p0, Landroid/net/ip/IpManager$MessageHandlingLogger;->receivedInState:Ljava/lang/String;

    #@5
    .line 1364
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1375
    const-string/jumbo v0, "rcvd_in=%s, proc_in=%s"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 1376
    iget-object v2, p0, Landroid/net/ip/IpManager$MessageHandlingLogger;->receivedInState:Ljava/lang/String;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    iget-object v2, p0, Landroid/net/ip/IpManager$MessageHandlingLogger;->processedInState:Ljava/lang/String;

    #@d
    const/4 v3, 0x1

    #@e
    aput-object v2, v1, v3

    #@10
    .line 1375
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method
