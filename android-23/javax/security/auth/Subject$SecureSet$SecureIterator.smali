.class Ljavax/security/auth/Subject$SecureSet$SecureIterator;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/Subject$SecureSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TSST;>;"
    }
.end annotation


# instance fields
.field protected iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TSST;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljavax/security/auth/Subject$SecureSet;


# direct methods
.method protected constructor <init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TSST;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 722
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$SecureIterator;, "Ljavax/security/auth/Subject$SecureSet<TSST;>.SecureIterator;"
    .local p1, "this$1":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TSST;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;->this$1:Ljavax/security/auth/Subject$SecureSet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 723
    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    #@7
    .line 722
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 727
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$SecureIterator;, "Ljavax/security/auth/Subject$SecureSet<TSST;>.SecureIterator;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

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
            "()TSST;"
        }
    .end annotation

    #@0
    .prologue
    .line 731
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$SecureIterator;, "Ljavax/security/auth/Subject$SecureSet<TSST;>.SecureIterator;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

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
    .line 739
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$SecureIterator;, "Ljavax/security/auth/Subject$SecureSet<TSST;>.SecureIterator;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;->this$1:Ljavax/security/auth/Subject$SecureSet;

    #@2
    iget-object v0, v0, Ljavax/security/auth/Subject$SecureSet;->this$0:Ljavax/security/auth/Subject;

    #@4
    invoke-static {v0}, Ljavax/security/auth/Subject;->-wrap0(Ljavax/security/auth/Subject;)V

    #@7
    .line 740
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    #@9
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@c
    .line 738
    return-void
.end method
