.class public Lcom/android/server/firewall/SenderPackageFilter;
.super Ljava/lang/Object;
.source "SenderPackageFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/SenderPackageFilter$1;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field public final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 59
    new-instance v0, Lcom/android/server/firewall/SenderPackageFilter$1;

    #@2
    const-string/jumbo v1, "sender-package"

    #@5
    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderPackageFilter$1;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/server/firewall/SenderPackageFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    #@a
    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Lcom/android/server/firewall/SenderPackageFilter;->mPackageName:Ljava/lang/String;

    #@5
    .line 36
    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 6
    .param p1, "ifw"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerUid"    # I
    .param p5, "callerPid"    # I
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "receivingUid"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 43
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v2

    #@5
    .line 45
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, -0x1

    #@6
    .line 47
    .local v1, "packageUid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/firewall/SenderPackageFilter;->mPackageName:Ljava/lang/String;

    #@8
    const/4 v4, 0x0

    #@9
    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v1

    #@d
    .line 52
    :goto_0
    const/4 v3, -0x1

    #@e
    if-ne v1, v3, :cond_0

    #@10
    .line 53
    return v5

    #@11
    .line 56
    :cond_0
    invoke-static {v1, p4}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@14
    move-result v3

    #@15
    return v3

    #@16
    .line 48
    :catch_0
    move-exception v0

    #@17
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
