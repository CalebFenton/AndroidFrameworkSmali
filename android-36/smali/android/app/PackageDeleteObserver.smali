.class public Landroid/app/PackageDeleteObserver;
.super Ljava/lang/Object;
.source "PackageDeleteObserver.java"


# instance fields
.field private final greylist-max-o mBinder:Landroid/content/pm/IPackageDeleteObserver2$Stub;


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/app/PackageDeleteObserver$1;

    invoke-direct {v0, p0}, Landroid/app/PackageDeleteObserver$1;-><init>(Landroid/app/PackageDeleteObserver;)V

    iput-object v0, p0, Landroid/app/PackageDeleteObserver;->mBinder:Landroid/content/pm/IPackageDeleteObserver2$Stub;

    .line 29
    return-void
.end method


# virtual methods
.method public greylist-max-o getBinder()Landroid/content/pm/IPackageDeleteObserver2;
    .registers 2

    .line 45
    iget-object v0, p0, Landroid/app/PackageDeleteObserver;->mBinder:Landroid/content/pm/IPackageDeleteObserver2$Stub;

    return-object v0
.end method

.method public greylist-max-o onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 52
    return-void
.end method

.method public greylist-max-o onUserActionRequired(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 49
    return-void
.end method
