.class Ljava/util/logging/Logger$LoggerHelper;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggerHelper"
.end annotation


# static fields
.field static allowStackWalkSearch:Z

.field static disableCallerCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 321
    const-string/jumbo v0, "sun.util.logging.disableCallerCheck"

    #@3
    invoke-static {v0}, Ljava/util/logging/Logger$LoggerHelper;->getBooleanProperty(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    .line 320
    sput-boolean v0, Ljava/util/logging/Logger$LoggerHelper;->disableCallerCheck:Z

    #@9
    .line 325
    const-string/jumbo v0, "jdk.logging.allowStackWalkSearch"

    #@c
    invoke-static {v0}, Ljava/util/logging/Logger$LoggerHelper;->getBooleanProperty(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 324
    sput-boolean v0, Ljava/util/logging/Logger$LoggerHelper;->allowStackWalkSearch:Z

    #@12
    .line 319
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getBooleanProperty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 327
    new-instance v1, Ljava/util/logging/Logger$LoggerHelper$1;

    #@2
    invoke-direct {v1, p0}, Ljava/util/logging/Logger$LoggerHelper$1;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    .line 332
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@12
    move-result v1

    #@13
    return v1
.end method
