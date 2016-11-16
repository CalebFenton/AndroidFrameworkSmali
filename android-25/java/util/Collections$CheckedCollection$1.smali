.class Ljava/util/Collections$CheckedCollection$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$CheckedCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/Collections$CheckedCollection;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Collections$CheckedCollection;Ljava/util/Iterator;)V
    .locals 0

    #@0
    .prologue
    .line 2644
    .local p1, "this$1":Ljava/util/Collections$CheckedCollection;, "Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p2, "val$it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    iput-object p1, p0, Ljava/util/Collections$CheckedCollection$1;->this$1:Ljava/util/Collections$CheckedCollection;

    #@2
    iput-object p2, p0, Ljava/util/Collections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 2645
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2646
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 2647
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@5
    return-void
.end method
