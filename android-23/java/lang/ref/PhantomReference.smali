.class public Ljava/lang/ref/PhantomReference;
.super Ljava/lang/ref/Reference;
.source "PhantomReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/Reference",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    .local p0, "this":Ljava/lang/ref/PhantomReference;, "Ljava/lang/ref/PhantomReference<TT;>;"
    .local p1, "r":Ljava/lang/Object;, "TT;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@3
    .line 59
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 71
    .local p0, "this":Ljava/lang/ref/PhantomReference;, "Ljava/lang/ref/PhantomReference<TT;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
