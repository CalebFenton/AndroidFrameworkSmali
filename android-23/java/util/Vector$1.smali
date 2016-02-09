.class Ljava/util/Vector$1;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Vector;->elements()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# instance fields
.field pos:I

.field final synthetic this$0:Ljava/util/Vector;


# direct methods
.method constructor <init>(Ljava/util/Vector;)V
    .locals 1

    #@0
    .prologue
    .line 340
    .local p1, "this$0":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iput-object p1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 341
    const/4 v0, 0x0

    #@6
    iput v0, p0, Ljava/util/Vector$1;->pos:I

    #@8
    .line 340
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    #@0
    .prologue
    .line 344
    iget v0, p0, Ljava/util/Vector$1;->pos:I

    #@2
    iget-object v1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    #@4
    iget v1, v1, Ljava/util/Vector;->elementCount:I

    #@6
    if-ge v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 349
    iget-object v1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    #@2
    monitor-enter v1

    #@3
    .line 350
    :try_start_0
    iget v0, p0, Ljava/util/Vector$1;->pos:I

    #@5
    iget-object v2, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    #@7
    iget v2, v2, Ljava/util/Vector;->elementCount:I

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 351
    iget-object v0, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    #@d
    iget-object v0, v0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@f
    iget v2, p0, Ljava/util/Vector$1;->pos:I

    #@11
    add-int/lit8 v3, v2, 0x1

    #@13
    iput v3, p0, Ljava/util/Vector$1;->pos:I

    #@15
    aget-object v0, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 354
    new-instance v0, Ljava/util/NoSuchElementException;

    #@1c
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@1f
    throw v0

    #@20
    .line 349
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method
