.class final Ljava/util/concurrent/Exchanger$Participant;
.super Ljava/lang/ThreadLocal;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Exchanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Participant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/concurrent/Exchanger$Node;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 294
    .local p0, "this":Ljava/util/concurrent/Exchanger$Participant;, "Ljava/util/concurrent/Exchanger<TV;>.Participant;"
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 295
    .local p0, "this":Ljava/util/concurrent/Exchanger$Participant;, "Ljava/util/concurrent/Exchanger<TV;>.Participant;"
    invoke-virtual {p0}, Ljava/util/concurrent/Exchanger$Participant;->initialValue()Ljava/util/concurrent/Exchanger$Node;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public initialValue()Ljava/util/concurrent/Exchanger$Node;
    .locals 1

    #@0
    .prologue
    .line 295
    .local p0, "this":Ljava/util/concurrent/Exchanger$Participant;, "Ljava/util/concurrent/Exchanger<TV;>.Participant;"
    new-instance v0, Ljava/util/concurrent/Exchanger$Node;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/Exchanger$Node;-><init>()V

    #@5
    return-object v0
.end method
