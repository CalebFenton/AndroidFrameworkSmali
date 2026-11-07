.class final Ljdk/internal/ref/CleanerImpl$CleanerCleanable;
.super Ljdk/internal/ref/PhantomCleanable;
.source "CleanerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/ref/CleanerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CleanerCleanable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljdk/internal/ref/PhantomCleanable<",
        "Ljava/lang/ref/Cleaner;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/ref/Cleaner;)V
    .registers 2
    .param p1, "cleaner"    # Ljava/lang/ref/Cleaner;

    .line 373
    invoke-direct {p0, p1, p1}, Ljdk/internal/ref/PhantomCleanable;-><init>(Ljava/lang/Object;Ljava/lang/ref/Cleaner;)V

    .line 374
    return-void
.end method


# virtual methods
.method protected blacklist performCleanup()V
    .registers 1

    .line 379
    return-void
.end method
