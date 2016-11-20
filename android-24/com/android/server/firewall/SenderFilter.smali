.class Lcom/android/server/firewall/SenderFilter;
.super Ljava/lang/Object;
.source "SenderFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/SenderFilter$1;,
        Lcom/android/server/firewall/SenderFilter$2;,
        Lcom/android/server/firewall/SenderFilter$3;,
        Lcom/android/server/firewall/SenderFilter$4;,
        Lcom/android/server/firewall/SenderFilter$5;
    }
.end annotation


# static fields
.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;

.field private static final SIGNATURE:Lcom/android/server/firewall/Filter;

.field private static final SYSTEM:Lcom/android/server/firewall/Filter;

.field private static final SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

.field private static final USER_ID:Lcom/android/server/firewall/Filter;

.field private static final VAL_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final VAL_SYSTEM:Ljava/lang/String; = "system"

.field private static final VAL_SYSTEM_OR_SIGNATURE:Ljava/lang/String; = "system|signature"

.field private static final VAL_USER_ID:Ljava/lang/String; = "userId"


# direct methods
.method static synthetic -get0()Lcom/android/server/firewall/Filter;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Lcom/android/server/firewall/Filter;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Lcom/android/server/firewall/Filter;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    #@2
    return-object v0
.end method

.method static synthetic -get3()Lcom/android/server/firewall/Filter;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 58
    new-instance v0, Lcom/android/server/firewall/SenderFilter$1;

    #@2
    const-string/jumbo v1, "sender"

    #@5
    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$1;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    #@a
    .line 80
    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    #@c
    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$2;-><init>()V

    #@f
    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    #@11
    .line 88
    new-instance v0, Lcom/android/server/firewall/SenderFilter$3;

    #@13
    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$3;-><init>()V

    #@16
    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    #@18
    .line 96
    new-instance v0, Lcom/android/server/firewall/SenderFilter$4;

    #@1a
    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$4;-><init>()V

    #@1d
    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    #@1f
    .line 105
    new-instance v0, Lcom/android/server/firewall/SenderFilter$5;

    #@21
    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$5;-><init>()V

    #@24
    sput-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    #@26
    .line 32
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static isPrivilegedApp(II)Z
    .locals 5
    .param p0, "callerUid"    # I
    .param p1, "callerPid"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 41
    const/16 v4, 0x3e8

    #@4
    if-eq p0, v4, :cond_0

    #@6
    if-nez p0, :cond_1

    #@8
    .line 43
    :cond_0
    return v2

    #@9
    .line 42
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@c
    move-result v4

    #@d
    if-eq p1, v4, :cond_0

    #@f
    if-eqz p1, :cond_0

    #@11
    .line 46
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@14
    move-result-object v1

    #@15
    .line 48
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPrivateFlagsForUid(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v4

    #@19
    and-int/lit8 v4, v4, 0x8

    #@1b
    if-eqz v4, :cond_2

    #@1d
    :goto_0
    return v2

    #@1e
    :cond_2
    move v2, v3

    #@1f
    goto :goto_0

    #@20
    .line 50
    :catch_0
    move-exception v0

    #@21
    .line 51
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "IntentFirewall"

    #@24
    const-string/jumbo v4, "Remote exception while retrieving uid flags"

    #@27
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    .line 55
    return v3
.end method
