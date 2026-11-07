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
        "Ljava/util/LinkedHashMap<",
        "Lcom/android/org/conscrypt/ByteArray;",
        "Lcom/android/org/conscrypt/NativeSslSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/AbstractSessionContext;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/AbstractSessionContext;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/org/conscrypt/AbstractSessionContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lcom/android/org/conscrypt/ByteArray;",
            "Lcom/android/org/conscrypt/NativeSslSession;",
            ">;)Z"
        }
    .end annotation

    .line 58
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/org/conscrypt/ByteArray;Lcom/android/org/conscrypt/NativeSslSession;>;"
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    invoke-static {v0}, Lcom/android/org/conscrypt/AbstractSessionContext;->-$$Nest$fgetmaximumSize(Lcom/android/org/conscrypt/AbstractSessionContext;)I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    invoke-static {v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->-$$Nest$fgetmaximumSize(Lcom/android/org/conscrypt/AbstractSessionContext;)I

    move-result v1

    if-le v0, v1, :cond_21

    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/NativeSslSession;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 61
    const/4 v0, 0x1

    return v0

    .line 63
    :cond_21
    const/4 v0, 0x0

    return v0
.end method
