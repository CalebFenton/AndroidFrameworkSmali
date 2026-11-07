.class Ljava/util/logging/Logger$SystemLoggerHelper;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemLoggerHelper"
.end annotation


# static fields
.field static greylist-max-o disableCallerCheck:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 435
    const-string v0, "sun.util.logging.disableCallerCheck"

    invoke-static {v0}, Ljava/util/logging/Logger$SystemLoggerHelper;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ljava/util/logging/Logger$SystemLoggerHelper;->disableCallerCheck:Z

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o getBooleanProperty(Ljava/lang/String;)Z
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 437
    new-instance v0, Ljava/util/logging/Logger$SystemLoggerHelper$1;

    invoke-direct {v0, p0}, Ljava/util/logging/Logger$SystemLoggerHelper$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 443
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
