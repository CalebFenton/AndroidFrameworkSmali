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
.field final ex:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 218
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$AltResult;, "Ljava/util/concurrent/CompletableFuture<TT;>.AltResult;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    #@5
    return-void
.end method
