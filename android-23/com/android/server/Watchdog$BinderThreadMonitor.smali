.class final Lcom/android/server/Watchdog$BinderThreadMonitor;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BinderThreadMonitor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/Watchdog$BinderThreadMonitor;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public monitor()V
    .locals 0

    #@0
    .prologue
    .line 200
    invoke-static {}, Landroid/os/Binder;->blockUntilThreadAvailable()V

    #@3
    .line 199
    return-void
.end method
