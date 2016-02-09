.class Ljava/util/ListResourceBundle$2;
.super Ljava/lang/Object;
.source "ListResourceBundle.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ListResourceBundle;->getKeys()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/ListResourceBundle;


# direct methods
.method constructor <init>(Ljava/util/ListResourceBundle;)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/ListResourceBundle;

    #@0
    .prologue
    .line 93
    iput-object p1, p0, Ljava/util/ListResourceBundle$2;->this$0:Ljava/util/ListResourceBundle;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 94
    iget-object v0, p0, Ljava/util/ListResourceBundle$2;->this$0:Ljava/util/ListResourceBundle;

    #@7
    iget-object v0, v0, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    #@9
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Ljava/util/ListResourceBundle$2;->it:Ljava/util/Iterator;

    #@13
    .line 93
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Ljava/util/ListResourceBundle$2;->it:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/util/ListResourceBundle$2;->nextElement()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Ljava/util/ListResourceBundle$2;->it:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method
