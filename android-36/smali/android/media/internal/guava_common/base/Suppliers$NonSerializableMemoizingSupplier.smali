.class Landroid/media/internal/guava_common/base/Suppliers$NonSerializableMemoizingSupplier;
.super Ljava/lang/Object;
.source "Suppliers.java"

# interfaces
.implements Landroid/media/internal/guava_common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/media/internal/guava_common/base/Supplier<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist SUCCESSFULLY_COMPUTED:Landroid/media/internal/guava_common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/base/Supplier<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile blacklist delegate:Landroid/media/internal/guava_common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/base/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Landroid/media/internal/guava_common/base/Suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/guava_common/base/Suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/guava_common/base/Suppliers$NonSerializableMemoizingSupplier;->SUCCESSFULLY_COMPUTED:Landroid/media/internal/guava_common/base/Supplier;

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 213
    iget-object v0, p0, Landroid/media/internal/guava_common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Landroid/media/internal/guava_common/base/Supplier;

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suppliers.memoize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    sget-object v2, Landroid/media/internal/guava_common/base/Suppliers$NonSerializableMemoizingSupplier;->SUCCESSFULLY_COMPUTED:Landroid/media/internal/guava_common/base/Supplier;

    if-ne v0, v2, :cond_28

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<supplier that returned "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/guava_common/base/Suppliers$NonSerializableMemoizingSupplier;->value:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
