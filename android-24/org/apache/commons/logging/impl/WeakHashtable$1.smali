.class Lorg/apache/commons/logging/impl/WeakHashtable$1;
.super Ljava/lang/Object;
.source "WeakHashtable.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;->keys()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/logging/impl/WeakHashtable;

.field final synthetic val$enumer:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Lorg/apache/commons/logging/impl/WeakHashtable;Ljava/util/Enumeration;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/logging/impl/WeakHashtable;
    .param p2, "val$enumer"    # Ljava/util/Enumeration;

    #@0
    .prologue
    .line 193
    iput-object p1, p0, Lorg/apache/commons/logging/impl/WeakHashtable$1;->this$0:Lorg/apache/commons/logging/impl/WeakHashtable;

    #@2
    iput-object p2, p0, Lorg/apache/commons/logging/impl/WeakHashtable$1;->val$enumer:Ljava/util/Enumeration;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$1;->val$enumer:Ljava/util/Enumeration;

    #@2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 198
    iget-object v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable$1;->val$enumer:Ljava/util/Enumeration;

    #@2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@8
    .line 199
    .local v0, "nextReference":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-static {v0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->-wrap0(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method
