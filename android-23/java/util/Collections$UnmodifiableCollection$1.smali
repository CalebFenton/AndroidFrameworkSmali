.class Ljava/util/Collections$UnmodifiableCollection$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$UnmodifiableCollection;->iterator()Ljava/util/Iterator;
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
.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/util/Collections$UnmodifiableCollection;


# direct methods
.method constructor <init>(Ljava/util/Collections$UnmodifiableCollection;)V
    .locals 1

    #@0
    .prologue
    .line 956
    .local p1, "this$1":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableCollection$1;->this$1:Ljava/util/Collections$UnmodifiableCollection;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 957
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection$1;->this$1:Ljava/util/Collections$UnmodifiableCollection;

    #@7
    iget-object v0, v0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    #@9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/util/Collections$UnmodifiableCollection$1;->iterator:Ljava/util/Iterator;

    #@f
    .line 956
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 960
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection$1;->iterator:Ljava/util/Iterator;

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
    .line 964
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection$1;->iterator:Ljava/util/Iterator;

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
    .line 968
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
