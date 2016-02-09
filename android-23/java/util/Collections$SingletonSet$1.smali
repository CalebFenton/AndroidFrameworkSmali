.class Ljava/util/Collections$SingletonSet$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$SingletonSet;->iterator()Ljava/util/Iterator;
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
.field hasNext:Z

.field final synthetic this$1:Ljava/util/Collections$SingletonSet;


# direct methods
.method constructor <init>(Ljava/util/Collections$SingletonSet;)V
    .locals 1

    #@0
    .prologue
    .line 244
    .local p1, "this$1":Ljava/util/Collections$SingletonSet;, "Ljava/util/Collections$SingletonSet<TE;>;"
    iput-object p1, p0, Ljava/util/Collections$SingletonSet$1;->this$1:Ljava/util/Collections$SingletonSet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 245
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Ljava/util/Collections$SingletonSet$1;->hasNext:Z

    #@8
    .line 244
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 248
    iget-boolean v0, p0, Ljava/util/Collections$SingletonSet$1;->hasNext:Z

    #@2
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
    .line 252
    iget-boolean v0, p0, Ljava/util/Collections$SingletonSet$1;->hasNext:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 253
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Ljava/util/Collections$SingletonSet$1;->hasNext:Z

    #@7
    .line 254
    iget-object v0, p0, Ljava/util/Collections$SingletonSet$1;->this$1:Ljava/util/Collections$SingletonSet;

    #@9
    iget-object v0, v0, Ljava/util/Collections$SingletonSet;->element:Ljava/lang/Object;

    #@b
    return-object v0

    #@c
    .line 256
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    #@e
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@11
    throw v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
