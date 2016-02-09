.class final Landroid/app/SystemServiceRegistry$54;
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
        "Landroid/print/PrintManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 580
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/print/PrintManager;
    .locals 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 583
    const-string/jumbo v2, "print"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 584
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/print/IPrintManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintManager;

    #@a
    move-result-object v1

    #@b
    .line 585
    .local v1, "service":Landroid/print/IPrintManager;
    new-instance v2, Landroid/print/PrintManager;

    #@d
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@10
    move-result-object v3

    #@11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@14
    move-result v4

    #@15
    .line 586
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@18
    move-result v5

    #@19
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    #@1c
    move-result v5

    #@1d
    .line 585
    invoke-direct {v2, v3, v1, v4, v5}, Landroid/print/PrintManager;-><init>(Landroid/content/Context;Landroid/print/IPrintManager;II)V

    #@20
    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 582
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$54;->createService(Landroid/app/ContextImpl;)Landroid/print/PrintManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
