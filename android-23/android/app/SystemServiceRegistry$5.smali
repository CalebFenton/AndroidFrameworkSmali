.class final Landroid/app/SystemServiceRegistry$5;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/app/AlarmManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/AlarmManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 175
    const-string/jumbo v2, "alarm"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 176
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    #@a
    move-result-object v1

    #@b
    .line 177
    .local v1, "service":Landroid/app/IAlarmManager;
    new-instance v2, Landroid/app/AlarmManager;

    #@d
    invoke-direct {v2, v1, p1}, Landroid/app/AlarmManager;-><init>(Landroid/app/IAlarmManager;Landroid/content/Context;)V

    #@10
    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 174
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$5;->createService(Landroid/app/ContextImpl;)Landroid/app/AlarmManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
