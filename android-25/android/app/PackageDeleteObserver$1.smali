.class Landroid/app/PackageDeleteObserver$1;
.super Landroid/content/pm/IPackageDeleteObserver2$Stub;
.source "PackageDeleteObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PackageDeleteObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/PackageDeleteObserver;


# direct methods
.method constructor <init>(Landroid/app/PackageDeleteObserver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/PackageDeleteObserver;

    #@0
    .prologue
    .line 24
    iput-object p1, p0, Landroid/app/PackageDeleteObserver$1;->this$0:Landroid/app/PackageDeleteObserver;

    #@2
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 32
    iget-object v0, p0, Landroid/app/PackageDeleteObserver$1;->this$0:Landroid/app/PackageDeleteObserver;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/PackageDeleteObserver;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    #@5
    .line 31
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 27
    iget-object v0, p0, Landroid/app/PackageDeleteObserver$1;->this$0:Landroid/app/PackageDeleteObserver;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/PackageDeleteObserver;->onUserActionRequired(Landroid/content/Intent;)V

    #@5
    .line 26
    return-void
.end method
