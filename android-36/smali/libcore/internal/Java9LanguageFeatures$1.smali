.class Llibcore/internal/Java9LanguageFeatures$1;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "Java9LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/internal/Java9LanguageFeatures;->createReference(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Llibcore/internal/Java9LanguageFeatures;


# direct methods
.method constructor blacklist <init>(Llibcore/internal/Java9LanguageFeatures;Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$0"    # Llibcore/internal/Java9LanguageFeatures;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 69
    .local p2, "arg0":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Llibcore/internal/Java9LanguageFeatures$1;->this$0:Llibcore/internal/Java9LanguageFeatures;

    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method
