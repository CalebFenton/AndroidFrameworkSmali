.class final Landroid/app/SystemServiceRegistry$2;
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
        "Landroid/view/accessibility/CaptioningManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 149
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/view/accessibility/CaptioningManager;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 152
    new-instance v0, Landroid/view/accessibility/CaptioningManager;

    #@2
    invoke-direct {v0, p1}, Landroid/view/accessibility/CaptioningManager;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 151
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$2;->createService(Landroid/app/ContextImpl;)Landroid/view/accessibility/CaptioningManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
