.class abstract Ljava/util/stream/ReduceOps$Box;
.super Ljava/lang/Object;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Box"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 667
    .local p0, "this":Ljava/util/stream/ReduceOps$Box;, "Ljava/util/stream/ReduceOps$Box<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    #@0
    .prologue
    .line 670
    .local p0, "this":Ljava/util/stream/ReduceOps$Box;, "Ljava/util/stream/ReduceOps$Box<TU;>;"
    iget-object v0, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    #@2
    return-object v0
.end method
