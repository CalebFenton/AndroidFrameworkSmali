.class final Landroid/app/SystemServiceRegistry$22;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/app/KeyguardManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 312
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService()Landroid/app/KeyguardManager;
    .locals 1

    #@0
    .prologue
    .line 315
    new-instance v0, Landroid/app/KeyguardManager;

    #@2
    invoke-direct {v0}, Landroid/app/KeyguardManager;-><init>()V

    #@5
    return-object v0
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$22;->createService()Landroid/app/KeyguardManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
