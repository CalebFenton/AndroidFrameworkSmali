.class Landroid/app/ActivityManager$4;
.super Landroid/util/Singleton;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/IActivityManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 5789
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/IActivityManager;
    .registers 3

    .line 5792
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5793
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    .line 5794
    .local v1, "am":Landroid/app/IActivityManager;
    return-object v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .registers 2

    .line 5789
    invoke-virtual {p0}, Landroid/app/ActivityManager$4;->create()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method
