.class Llibcore/util/NativeAllocationRegistry$CleanerRunner;
.super Ljava/lang/Object;
.source "NativeAllocationRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/NativeAllocationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CleanerRunner"
.end annotation


# instance fields
.field private final cleaner:Lsun/misc/Cleaner;


# direct methods
.method public constructor <init>(Lsun/misc/Cleaner;)V
    .locals 0
    .param p1, "cleaner"    # Lsun/misc/Cleaner;

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 208
    iput-object p1, p0, Llibcore/util/NativeAllocationRegistry$CleanerRunner;->cleaner:Lsun/misc/Cleaner;

    #@5
    .line 207
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerRunner;->cleaner:Lsun/misc/Cleaner;

    #@2
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    #@5
    .line 211
    return-void
.end method
