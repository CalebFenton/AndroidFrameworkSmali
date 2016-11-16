.class final Ljava/util/concurrent/Exchanger$Node;
.super Ljava/lang/Object;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Exchanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# instance fields
.field bound:I

.field collides:I

.field hash:I

.field index:I

.field item:Ljava/lang/Object;

.field volatile match:Ljava/lang/Object;

.field volatile parked:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 281
    .local p0, "this":Ljava/util/concurrent/Exchanger$Node;, "Ljava/util/concurrent/Exchanger<TV;>.Node;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
