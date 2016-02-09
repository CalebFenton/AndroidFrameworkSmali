.class final Landroid/app/SystemServiceRegistry$67;
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
        "Landroid/media/midi/MidiManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 691
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/media/midi/MidiManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 694
    const-string/jumbo v1, "midi"

    #@4
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 695
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@a
    .line 696
    return-object v2

    #@b
    .line 698
    :cond_0
    new-instance v1, Landroid/media/midi/MidiManager;

    #@d
    invoke-static {v0}, Landroid/media/midi/IMidiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;

    #@10
    move-result-object v2

    #@11
    invoke-direct {v1, v2}, Landroid/media/midi/MidiManager;-><init>(Landroid/media/midi/IMidiManager;)V

    #@14
    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 693
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$67;->createService(Landroid/app/ContextImpl;)Landroid/media/midi/MidiManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
