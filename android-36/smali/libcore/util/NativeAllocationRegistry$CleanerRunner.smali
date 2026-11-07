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
.field private final greylist-max-o cleaner:Lsun/misc/Cleaner;


# direct methods
.method public constructor greylist-max-o <init>(Lsun/misc/Cleaner;)V
    .registers 2
    .param p1, "cleaner"    # Lsun/misc/Cleaner;

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p1, p0, Llibcore/util/NativeAllocationRegistry$CleanerRunner;->cleaner:Lsun/misc/Cleaner;

    .line 570
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 573
    iget-object v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerRunner;->cleaner:Lsun/misc/Cleaner;

    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 574
    return-void
.end method
