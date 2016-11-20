.class public abstract Landroid/app/EphemeralResolverService;
.super Landroid/app/Service;
.source "EphemeralResolverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/EphemeralResolverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final EXTRA_PREFIX:Ljava/lang/String; = "android.app.PREFIX"

.field public static final EXTRA_RESOLVE_INFO:Ljava/lang/String; = "android.app.extra.RESOLVE_INFO"

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "android.app.extra.SEQUENCE"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/app/EphemeralResolverService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/EphemeralResolverService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    #@0
    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 59
    new-instance v0, Landroid/app/EphemeralResolverService$ServiceHandler;

    #@5
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, p0, v1}, Landroid/app/EphemeralResolverService$ServiceHandler;-><init>(Landroid/app/EphemeralResolverService;Landroid/os/Looper;)V

    #@c
    iput-object v0, p0, Landroid/app/EphemeralResolverService;->mHandler:Landroid/os/Handler;

    #@e
    .line 57
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 64
    new-instance v0, Landroid/app/EphemeralResolverService$1;

    #@2
    invoke-direct {v0, p0}, Landroid/app/EphemeralResolverService$1;-><init>(Landroid/app/EphemeralResolverService;)V

    #@5
    return-object v0
.end method

.method public abstract onEphemeralResolveInfoList([II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation
.end method
