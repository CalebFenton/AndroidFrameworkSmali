.class final Ljava/util/stream/Tripwire;
.super Ljava/lang/Object;
.source "Tripwire.java"


# static fields
.field static final blacklist ENABLED:Z

.field private static final blacklist TRIPWIRE_PROPERTY:Ljava/lang/String; = "org.openjdk.java.util.stream.tripwire"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Ljava/util/stream/Tripwire$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/stream/Tripwire$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$static$0()Ljava/lang/Boolean;
    .registers 1

    .line 54
    const-string v0, "org.openjdk.java.util.stream.tripwire"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static blacklist trip(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    .local p0, "trippingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method
