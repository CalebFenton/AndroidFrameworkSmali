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
.field final synthetic this$1:Landroid/icu/impl/ICUResourceBundle$2;

.field final synthetic val$names:Ljava/util/Set;


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundle$2;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$1"    # Landroid/icu/impl/ICUResourceBundle$2;

    #@0
    .prologue
    .line 620
    .local p2, "val$names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$2$1;->this$1:Landroid/icu/impl/ICUResourceBundle$2;

    #@2
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$2$1;->val$names:Ljava/util/Set;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 622
    const-string/jumbo v1, ".res"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 623
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v1

    #@d
    add-int/lit8 v1, v1, -0x4

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 624
    .local v0, "locstr":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$2$1;->val$names:Ljava/util/Set;

    #@16
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@19
    .line 621
    .end local v0    # "locstr":Ljava/lang/String;
    :cond_0
    return-void
.end method
