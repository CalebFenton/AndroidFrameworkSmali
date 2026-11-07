.class final Landroid/media/internal/guava_common/base/NullnessCasts;
.super Ljava/lang/Object;
.source "NullnessCasts.java"


# direct methods
.method static blacklist uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 0
    return-object p0
.end method
