.class Ljavax/security/auth/Subject$SecureSet$2;
.super Ljava/util/AbstractSet;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private elements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljavax/security/auth/Subject$SecureSet;

.field final synthetic val$c:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject$SecureSet;Ljava/lang/Class;)V
    .locals 1

    #@0
    .prologue
    .line 634
    .local p1, "this$1":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p2, "val$c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet$2;->this$1:Ljavax/security/auth/Subject$SecureSet;

    #@2
    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet$2;->val$c:Ljava/lang/Class;

    #@4
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@7
    .line 635
    new-instance v0, Ljava/util/LinkedList;

    #@9
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@c
    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet$2;->elements:Ljava/util/LinkedList;

    #@e
    .line 634
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 639
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$2;->val$c:Ljava/lang/Class;

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Invalid type: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 643
    :cond_0
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$2;->elements:Ljava/util/LinkedList;

    #@2c
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_1

    #@32
    .line 644
    const/4 v0, 0x0

    #@33
    return v0

    #@34
    .line 646
    :cond_1
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$2;->elements:Ljava/util/LinkedList;

    #@36
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@39
    .line 647
    const/4 v0, 0x1

    #@3a
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 652
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$2;->elements:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 658
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p1, :cond_0

    #@2
    .line 659
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "c == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 661
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$2;->elements:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
