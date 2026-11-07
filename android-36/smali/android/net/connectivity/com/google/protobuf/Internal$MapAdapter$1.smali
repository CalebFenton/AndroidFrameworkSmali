.class Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$1;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;->newEnumConverter(Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;)Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter<",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$enumMap:Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;

.field final synthetic blacklist val$unrecognizedValue:Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$1;->val$enumMap:Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;

    iput-object p2, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$1;->val$unrecognizedValue:Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist doBackward(Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 445
    .local p1, "value":Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;, "TT;"
    invoke-interface {p1}, Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 436
    check-cast p1, Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$1;->doBackward(Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist doForward(Ljava/lang/Integer;)Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;
    .registers 4
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$1;->val$enumMap:Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;

    move-result-object v0

    .line 440
    .local v0, "result":Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;, "TT;"
    if-nez v0, :cond_f

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$1;->val$unrecognizedValue:Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    return-object v1
.end method

.method public bridge synthetic blacklist doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 436
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$1;->doForward(Ljava/lang/Integer;)Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;

    move-result-object p1

    return-object p1
.end method
