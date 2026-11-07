.class final Ljava/util/concurrent/CompletableFuture$AltResult;
.super Ljava/lang/Object;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AltResult"
.end annotation


# instance fields
.field final greylist-max-o ex:Ljava/lang/Throwable;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "x"    # Ljava/lang/Throwable;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    return-void
.end method
