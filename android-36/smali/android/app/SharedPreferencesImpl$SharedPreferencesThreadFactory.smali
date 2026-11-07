.class final Landroid/app/SharedPreferencesImpl$SharedPreferencesThreadFactory;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedPreferencesThreadFactory"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/SharedPreferencesImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$SharedPreferencesThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 890
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 891
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "SharedPreferences"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 892
    return-object v0
.end method
