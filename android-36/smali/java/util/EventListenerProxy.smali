.class public abstract Ljava/util/EventListenerProxy;
.super Ljava/lang/Object;
.source "EventListenerProxy.java"

# interfaces
.implements Ljava/util/EventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/EventListener;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/EventListener;"
    }
.end annotation


# instance fields
.field private final greylist-max-o listener:Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>(Ljava/util/EventListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Ljava/util/EventListenerProxy;, "Ljava/util/EventListenerProxy<TT;>;"
    .local p1, "listener":Ljava/util/EventListener;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Ljava/util/EventListenerProxy;->listener:Ljava/util/EventListener;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist test-api getListener()Ljava/util/EventListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 73
    .local p0, "this":Ljava/util/EventListenerProxy;, "Ljava/util/EventListenerProxy<TT;>;"
    iget-object v0, p0, Ljava/util/EventListenerProxy;->listener:Ljava/util/EventListener;

    return-object v0
.end method
