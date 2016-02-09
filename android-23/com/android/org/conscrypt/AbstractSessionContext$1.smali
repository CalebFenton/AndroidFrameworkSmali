.class Lcom/android/org/conscrypt/AbstractSessionContext$1;
.super Ljava/util/LinkedHashMap;
.source "AbstractSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/AbstractSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lcom/android/org/conscrypt/ByteArray;",
        "Ljavax/net/ssl/SSLSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/conscrypt/AbstractSessionContext;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/AbstractSessionContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/org/conscrypt/AbstractSessionContext;

    #@0
    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    #@2
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/android/org/conscrypt/ByteArray;",
            "Ljavax/net/ssl/SSLSession;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/conscrypt/ByteArray;Ljavax/net/ssl/SSLSession;>;"
    const/4 v3, 0x0

    #@1
    .line 60
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    #@3
    iget v1, v1, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    #@5
    if-lez v1, :cond_1

    #@7
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext$1;->size()I

    #@a
    move-result v1

    #@b
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    #@d
    iget v2, v2, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    #@f
    if-le v1, v2, :cond_1

    #@11
    const/4 v0, 0x1

    #@12
    .line 61
    .local v0, "remove":Z
    :goto_0
    if-eqz v0, :cond_0

    #@14
    .line 62
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext$1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 63
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    #@1d
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljavax/net/ssl/SSLSession;

    #@23
    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V

    #@26
    .line 65
    :cond_0
    return v3

    #@27
    .line 60
    .end local v0    # "remove":Z
    :cond_1
    const/4 v0, 0x0

    #@28
    .restart local v0    # "remove":Z
    goto :goto_0
.end method
