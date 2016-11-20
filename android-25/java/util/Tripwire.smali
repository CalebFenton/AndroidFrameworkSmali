.class final Ljava/util/Tripwire;
.super Ljava/lang/Object;
.source "Tripwire.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Tripwire$-void__clinit___LambdaImpl0;
    }
.end annotation


# static fields
.field static final ENABLED:Z

.field private static final TRIPWIRE_PROPERTY:Ljava/lang/String; = "org.openjdk.java.util.stream.tripwire"


# direct methods
.method static synthetic -java_util_Tripwire_lambda$1()Ljava/lang/Boolean;
    .locals 1

    #@0
    .prologue
    .line 53
    const-string/jumbo v0, "org.openjdk.java.util.stream.tripwire"

    #@3
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 53
    new-instance v0, Ljava/util/Tripwire$-void__clinit___LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/Tripwire$-void__clinit___LambdaImpl0;-><init>()V

    #@5
    .line 52
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Boolean;

    #@b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result v0

    #@f
    sput-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    #@11
    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static trip(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 67
    .local p0, "trippingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x1

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    const/4 v3, 0x0

    #@10
    aput-object v2, v1, v3

    #@12
    invoke-virtual {v0, p1, v1}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    #@15
    .line 66
    return-void
.end method
