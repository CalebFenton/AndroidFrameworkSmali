.class public final Lcom/android/internal/ravenwood/RavenwoodEnvironment;
.super Ljava/lang/Object;
.source "RavenwoodEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/ravenwood/RavenwoodEnvironment$CompatIdsForTest;
    }
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "RavenwoodEnvironment"

.field private static blacklist sInstance:Lcom/android/internal/ravenwood/RavenwoodEnvironment;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    invoke-direct {v0}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;-><init>()V

    sput-object v0, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->sInstance:Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;
    .registers 1

    .line 47
    sget-object v0, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->sInstance:Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    return-object v0
.end method

.method private blacklist isRunningOnRavenwood$ravenwood()Z
    .registers 2

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist notSupportedOnDevice()Ljava/lang/RuntimeException;
    .registers 2

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method can only be used on Ravenwood"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist fromAddress(J)Ljava/lang/Object;
    .registers 4
    .param p1, "address"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)TT;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->notSupportedOnDevice()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getRavenwoodRuntimePath()Ljava/lang/String;
    .registers 2

    .line 85
    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->notSupportedOnDevice()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isRunningOnRavenwood()Z
    .registers 2

    .line 64
    const/4 v0, 0x0

    return v0
.end method
