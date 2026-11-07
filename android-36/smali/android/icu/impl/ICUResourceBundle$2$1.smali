.class Landroid/icu/impl/ICUResourceBundle$2$1;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"

# interfaces
.implements Landroid/icu/impl/URLHandler$URLVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUResourceBundle$2;->run()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/impl/ICUResourceBundle$2;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundle$2;)V
    .registers 2
    .param p1, "this$0"    # Landroid/icu/impl/ICUResourceBundle$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 781
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$2$1;->this$0:Landroid/icu/impl/ICUResourceBundle$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist visit(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 784
    const-string v0, ".res"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 785
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "locstr":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$2$1;->this$0:Landroid/icu/impl/ICUResourceBundle$2;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$2;->val$names:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 788
    .end local v0    # "locstr":Ljava/lang/String;
    :cond_1a
    return-void
.end method
