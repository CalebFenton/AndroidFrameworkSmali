.class public abstract Lcom/android/internal/telephony/SimultaneousCallingTracker$ListenerBase;
.super Ljava/lang/Object;
.source "SimultaneousCallingTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/SimultaneousCallingTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimultaneousCallingTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListenerBase"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSimultaneousCallingSupportChanged(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 0
    return-void
.end method
