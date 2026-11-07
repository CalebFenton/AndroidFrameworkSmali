.class public interface abstract Lcom/android/internal/telephony/d2d/Communicator$Callback;
.super Ljava/lang/Object;
.source "Communicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/d2d/Communicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract blacklist onD2DAvailabilitychanged(Z)V
.end method

.method public abstract blacklist onMessagesReceived(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/d2d/Communicator$Message;",
            ">;)V"
        }
    .end annotation
.end method
