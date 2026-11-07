.class abstract Lsun/util/logging/PlatformLogger$LoggerProxy;
.super Ljava/lang/Object;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LoggerProxy"
.end annotation


# instance fields
.field final blacklist name:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    .line 415
    return-void
.end method


# virtual methods
.method abstract blacklist doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V
.end method

.method abstract blacklist doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method varargs abstract blacklist doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method abstract blacklist getLevel()Lsun/util/logging/PlatformLogger$Level;
.end method

.method abstract blacklist isEnabled()Z
.end method

.method abstract blacklist isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
.end method

.method abstract blacklist setLevel(Lsun/util/logging/PlatformLogger$Level;)V
.end method
