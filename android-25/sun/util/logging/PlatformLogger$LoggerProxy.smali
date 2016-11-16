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
.field final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 452
    iput-object p1, p0, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    #@5
    .line 451
    return-void
.end method


# virtual methods
.method abstract doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V
.end method

.method abstract doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method varargs abstract doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method abstract getLevel()Lsun/util/logging/PlatformLogger$Level;
.end method

.method abstract isEnabled()Z
.end method

.method abstract isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
.end method

.method abstract setLevel(Lsun/util/logging/PlatformLogger$Level;)V
.end method
