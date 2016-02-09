.class Ljava/util/ListResourceBundle$1;
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
.field local:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field nextElement:Ljava/lang/String;

.field pEnum:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
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
    .line 51
    iput-object p1, p0, Ljava/util/ListResourceBundle$1;->this$0:Ljava/util/ListResourceBundle;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 52
    iget-object v0, p0, Ljava/util/ListResourceBundle$1;->this$0:Ljava/util/ListResourceBundle;

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
    iput-object v0, p0, Ljava/util/ListResourceBundle$1;->local:Ljava/util/Iterator;

    #@13
    .line 54
    iget-object v0, p0, Ljava/util/ListResourceBundle$1;->this$0:Ljava/util/ListResourceBundle;

    #@15
    iget-object v0, v0, Ljava/util/ListResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@17
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Ljava/util/ListResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    #@1d
    .line 51
    return-void
.end method

.method private findNext()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 59
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->nextElement:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 60
    return v2

    #@6
    .line 62
    :cond_0
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    #@8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 63
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    #@10
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    .line 64
    .local v0, "next":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->this$0:Ljava/util/ListResourceBundle;

    #@18
    iget-object v1, v1, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 65
    iput-object v0, p0, Ljava/util/ListResourceBundle$1;->nextElement:Ljava/lang/String;

    #@22
    .line 66
    return v2

    #@23
    .line 69
    .end local v0    # "next":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@24
    return v1
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Ljava/util/ListResourceBundle$1;->local:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 74
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 76
    :cond_0
    invoke-direct {p0}, Ljava/util/ListResourceBundle$1;->findNext()Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/util/ListResourceBundle$1;->nextElement()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 80
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->local:Ljava/util/Iterator;

    #@2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 81
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->local:Ljava/util/Iterator;

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/lang/String;

    #@10
    return-object v1

    #@11
    .line 83
    :cond_0
    invoke-direct {p0}, Ljava/util/ListResourceBundle$1;->findNext()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 84
    iget-object v0, p0, Ljava/util/ListResourceBundle$1;->nextElement:Ljava/lang/String;

    #@19
    .line 85
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    #@1a
    iput-object v1, p0, Ljava/util/ListResourceBundle$1;->nextElement:Ljava/lang/String;

    #@1c
    .line 86
    return-object v0

    #@1d
    .line 89
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    #@1f
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/lang/String;

    #@25
    return-object v1
.end method
