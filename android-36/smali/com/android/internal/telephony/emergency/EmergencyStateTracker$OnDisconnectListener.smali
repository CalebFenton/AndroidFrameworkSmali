.class Lcom/android/internal/telephony/emergency/EmergencyStateTracker$OnDisconnectListener;
.super Lcom/android/internal/telephony/Connection$ListenerBase;
.source "EmergencyStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/emergency/EmergencyStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnDisconnectListener"
.end annotation


# instance fields
.field private final blacklist mFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CompletableFuture;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection$ListenerBase;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$OnDisconnectListener;->mFuture:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public blacklist onDisconnect(I)V
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$OnDisconnectListener;->mFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
