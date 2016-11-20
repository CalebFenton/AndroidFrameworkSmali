.class public Lcom/google/common/lang/BackgroundThreadFactory;
.super Ljava/lang/Object;
.source "BackgroundThreadFactory.java"

# interfaces
.implements Lcom/google/common/lang/ThreadFactory;


# instance fields
.field private final threadFactory:Lcom/google/common/lang/ThreadFactory;


# direct methods
.method public constructor <init>(Lcom/google/common/lang/ThreadFactory;)V
    .locals 0
    .param p1, "toBeBackgrounded"    # Lcom/google/common/lang/ThreadFactory;

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 20
    iput-object p1, p0, Lcom/google/common/lang/BackgroundThreadFactory;->threadFactory:Lcom/google/common/lang/ThreadFactory;

    #@5
    .line 21
    return-void
.end method
