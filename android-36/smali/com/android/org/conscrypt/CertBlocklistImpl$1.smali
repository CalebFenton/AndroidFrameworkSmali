.class Lcom/android/org/conscrypt/CertBlocklistImpl$1;
.super Ljava/util/LinkedHashMap;
.source "CertBlocklistImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/CertBlocklistImpl;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lcom/android/org/conscrypt/ByteArray;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/CertBlocklistImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/CertBlocklistImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/org/conscrypt/CertBlocklistImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/android/org/conscrypt/CertBlocklistImpl$1;->this$0:Lcom/android/org/conscrypt/CertBlocklistImpl;

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
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 73
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/org/conscrypt/ByteArray;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/android/org/conscrypt/CertBlocklistImpl$1;->size()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
