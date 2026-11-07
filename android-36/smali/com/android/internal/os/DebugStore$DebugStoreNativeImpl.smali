.class Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;
.super Ljava/lang/Object;
.source "DebugStore.java"

# interfaces
.implements Lcom/android/internal/os/DebugStore$DebugStoreNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/DebugStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugStoreNativeImpl"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/DebugStore-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;-><init>()V

    return-void
.end method

.method private blacklist attributeString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 333
    .local p1, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 336
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_25

    .line 339
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 340
    :cond_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_32

    .line 341
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 344
    .end local v1    # "i":I
    :cond_35
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist beginEvent(Ljava/lang/String;Ljava/util/List;)J
    .registers 5
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 304
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/android/internal/os/DebugStore;->-$$Nest$smbeginEventNative(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    .line 310
    .local v0, "id":J
    return-wide v0
.end method

.method public blacklist endEvent(JLjava/util/List;)V
    .registers 4
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 318
    .local p3, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lcom/android/internal/os/DebugStore;->-$$Nest$smendEventNative(JLjava/util/List;)V

    .line 319
    return-void
.end method

.method public blacklist recordEvent(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 326
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/android/internal/os/DebugStore;->-$$Nest$smrecordEventNative(Ljava/lang/String;Ljava/util/List;)V

    .line 327
    return-void
.end method
