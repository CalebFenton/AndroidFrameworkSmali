.class public Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkCallbackMethodsHolder"
.end annotation


# static fields
.field public static final blacklist NETWORK_CB_METHODS:[Landroid/net/ConnectivityManager$NetworkCallbackMethod;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 4577
    const/16 v0, 0xe

    new-array v0, v0, [Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/net/NetworkCapabilities;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4579
    const-string v3, "onReserved"

    const/16 v5, 0x2000

    invoke-static {v3, v5, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v2

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/net/Network;

    aput-object v3, v2, v4

    .line 4580
    const-string v3, "onPreCheck"

    const/4 v5, 0x2

    invoke-static {v3, v5, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/net/Network;

    aput-object v3, v2, v4

    .line 4583
    const-string v3, "onAvailable"

    const/4 v6, 0x4

    invoke-static {v3, v6, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v2

    aput-object v2, v0, v5

    new-array v2, v6, [Ljava/lang/Class;

    const-class v7, Landroid/net/Network;

    aput-object v7, v2, v4

    const-class v7, Landroid/net/NetworkCapabilities;

    aput-object v7, v2, v1

    const-class v7, Landroid/net/LinkProperties;

    aput-object v7, v2, v5

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v7, v2, v8

    .line 4584
    invoke-static {v3, v6, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v2

    aput-object v2, v0, v8

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/net/Network;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    .line 4587
    const-string v3, "onLosing"

    const/16 v7, 0x8

    invoke-static {v3, v7, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v2

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/net/Network;

    aput-object v3, v2, v4

    .line 4588
    const-string v3, "onLost"

    const/16 v6, 0x10

    invoke-static {v3, v6, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v4, [Ljava/lang/Class;

    .line 4589
    const-string v3, "onUnavailable"

    const/16 v6, 0x20

    invoke-static {v3, v6, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/net/Network;

    aput-object v3, v2, v4

    const-class v3, Landroid/net/NetworkCapabilities;

    aput-object v3, v2, v1

    .line 4590
    const-string v3, "onCapabilitiesChanged"

    const/16 v6, 0x44

    invoke-static {v3, v6, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/net/Network;

    aput-object v3, v2, v4

    const-class v3, Landroid/net/LinkProperties;

    aput-object v3, v2, v1

    .line 4593
    const-string v3, "onLinkPropertiesChanged"

    const/16 v6, 0x84

    invoke-static {v3, v6, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v2

    aput-object v2, v0, v7

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/net/Network;

    aput-object v3, v2, v4

    const-class v3, Landroid/net/LocalNetworkInfo;

    aput-object v3, v2, v1

    .line 4596
    const-string v3, "onLocalNetworkInfoChanged"

    const/16 v6, 0x1004

    invoke-static {v3, v6, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/net/Network;

    aput-object v3, v2, v4

    .line 4599
    const-string v3, "onNetworkSuspended"

    const/16 v6, 0x204

    invoke-static {v3, v6, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/net/Network;

    aput-object v3, v2, v4

    .line 4601
    const-string v3, "onNetworkResumed"

    const/16 v6, 0x400

    invoke-static {v3, v6, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/net/Network;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    .line 4603
    const-string v3, "onBlockedStatusChanged"

    const/16 v6, 0x804

    invoke-static {v3, v6, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v2

    const/16 v7, 0xc

    aput-object v2, v0, v7

    new-array v2, v5, [Ljava/lang/Class;

    const-class v5, Landroid/net/Network;

    aput-object v5, v2, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v1

    .line 4606
    invoke-static {v3, v6, v2}, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/ConnectivityManager$NetworkCallbackMethodsHolder;->NETWORK_CB_METHODS:[Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    .line 4577
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 4576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs blacklist method(Ljava/lang/String;I[Ljava/lang/Class;)Landroid/net/ConnectivityManager$NetworkCallbackMethod;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "callbacksCallingThisMethod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/net/ConnectivityManager$NetworkCallbackMethod;"
        }
    .end annotation

    .line 4613
    .local p2, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Landroid/net/ConnectivityManager$NetworkCallbackMethod;

    invoke-direct {v0, p0, p2, p1}, Landroid/net/ConnectivityManager$NetworkCallbackMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;I)V

    return-object v0
.end method
