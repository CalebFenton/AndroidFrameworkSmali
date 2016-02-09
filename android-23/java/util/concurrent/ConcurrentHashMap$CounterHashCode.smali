.class final Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CounterHashCode"
.end annotation


# instance fields
.field code:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3171
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.CounterHashCode;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
