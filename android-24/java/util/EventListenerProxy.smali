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
.field private final listener:Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/EventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 63
    .local p0, "this":Ljava/util/EventListenerProxy;, "Ljava/util/EventListenerProxy<TT;>;"
    .local p1, "listener":Ljava/util/EventListener;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Ljava/util/EventListenerProxy;->listener:Ljava/util/EventListener;

    #@5
    .line 63
    return-void
.end method


# virtual methods
.method public getListener()Ljava/util/EventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 73
    .local p0, "this":Ljava/util/EventListenerProxy;, "Ljava/util/EventListenerProxy<TT;>;"
    iget-object v0, p0, Ljava/util/EventListenerProxy;->listener:Ljava/util/EventListener;

    #@2
    return-object v0
.end method
