.class Lcom/android/org/conscrypt/AbstractSessionContext$2;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/AbstractSessionContext;->getIds()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<[B>;"
    }
.end annotation


# instance fields
.field private next:Ljavax/net/ssl/SSLSession;

.field final synthetic this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

.field final synthetic val$i:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/AbstractSessionContext;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/org/conscrypt/AbstractSessionContext;

    #@0
    .prologue
    .line 92
    .local p2, "val$i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    #@2
    iput-object p2, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->val$i:Ljava/util/Iterator;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 97
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 98
    return v2

    #@7
    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->val$i:Ljava/util/Iterator;

    #@9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 101
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->val$i:Ljava/util/Iterator;

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljavax/net/ssl/SSLSession;

    #@17
    .line 102
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 103
    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    #@1f
    .line 104
    return v2

    #@20
    .line 107
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    iput-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    #@22
    .line 108
    const/4 v1, 0x0

    #@23
    return v1
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext$2;->nextElement()[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()[B
    .locals 2

    #@0
    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext$2;->hasMoreElements()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 114
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    #@8
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getId()[B

    #@b
    move-result-object v0

    #@c
    .line 115
    .local v0, "id":[B
    const/4 v1, 0x0

    #@d
    iput-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    #@f
    .line 116
    return-object v0

    #@10
    .line 118
    .end local v0    # "id":[B
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@12
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@15
    throw v1
.end method
