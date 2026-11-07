.class public Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;
.super Ljava/lang/Object;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist newChildSessionStateMachine(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;Landroid/net/ipsec/ike/ChildSessionCallback;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .registers 6
    .param p1, "ikeContext"    # Lcom/android/internal/net/ipsec/ike/IkeContext;
    .param p2, "childSessionSmConfig"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;
    .param p3, "userCallbacks"    # Landroid/net/ipsec/ike/ChildSessionCallback;
    .param p4, "childSmCallback"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    .line 777
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;-><init>(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;Landroid/net/ipsec/ike/ChildSessionCallback;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;)V

    .line 780
    .local v0, "childSession":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->start()V

    .line 781
    return-object v0
.end method

.method public blacklist newEapAuthenticator(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/eap/IEapCallback;Landroid/net/eap/EapSessionConfig;)Lcom/android/internal/net/eap/EapAuthenticator;
    .registers 5
    .param p1, "ikeContext"    # Lcom/android/internal/net/ipsec/ike/IkeContext;
    .param p2, "cb"    # Lcom/android/internal/net/eap/IEapCallback;
    .param p3, "eapSessionConfig"    # Landroid/net/eap/EapSessionConfig;

    .line 768
    new-instance v0, Lcom/android/internal/net/eap/EapAuthenticator;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/net/eap/EapAuthenticator;-><init>(Lcom/android/internal/net/eap/EapAuthenticator$EapContext;Lcom/android/internal/net/eap/IEapCallback;Landroid/net/eap/EapSessionConfig;)V

    return-object v0
.end method

.method public blacklist newExactAndAllowWhileIdleAlarm(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;
    .registers 3
    .param p1, "alarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 800
    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->newExactAndAllowWhileIdleAlarm(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newIkeConnectionController(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
    .registers 4
    .param p1, "ikeContext"    # Lcom/android/internal/net/ipsec/ike/IkeContext;
    .param p2, "config"    # Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;

    .line 787
    new-instance v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;-><init>(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;)V

    return-object v0
.end method

.method public blacklist newIkeContext(Landroid/os/Looper;Landroid/content/Context;Landroid/net/Network;)Lcom/android/internal/net/ipsec/ike/IkeContext;
    .registers 6
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "network"    # Landroid/net/Network;

    .line 756
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeContext;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    invoke-direct {v1, p2, p3}, Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;-><init>(Landroid/content/Context;Landroid/net/Network;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/net/ipsec/ike/IkeContext;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)V

    return-object v0
.end method

.method public blacklist newIkeSpiGenerator(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;
    .registers 3
    .param p1, "randomnessFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    .line 805
    new-instance v0, Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;

    invoke-direct {v0, p1}, Lcom/android/internal/net/ipsec/ike/utils/IkeSpiGenerator;-><init>(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)V

    return-object v0
.end method

.method public blacklist newLocalRequestFactory()Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;
    .registers 2

    .line 792
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;-><init>()V

    return-object v0
.end method
