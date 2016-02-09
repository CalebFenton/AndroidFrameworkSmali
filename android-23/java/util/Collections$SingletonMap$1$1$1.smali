.class Ljava/util/Collections$SingletonMap$1$1$1;
.super Ljava/util/MapEntry;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$SingletonMap$1$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/MapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$3:Ljava/util/Collections$SingletonMap$1$1;


# direct methods
.method constructor <init>(Ljava/util/Collections$SingletonMap$1$1;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$3"    # Ljava/util/Collections$SingletonMap$1$1;

    #@0
    .prologue
    .line 351
    .local p2, "$anonymous0":Ljava/lang/Object;, "TK;"
    .local p3, "$anonymous1":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/Collections$SingletonMap$1$1$1;->this$3:Ljava/util/Collections$SingletonMap$1$1;

    #@2
    invoke-direct {p0, p2, p3}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@5
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 353
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
