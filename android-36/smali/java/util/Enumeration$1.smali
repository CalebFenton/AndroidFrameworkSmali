.class Ljava/util/Enumeration$1;
.super Ljava/lang/Object;
.source "Enumeration.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Enumeration;->asIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/Enumeration;


# direct methods
.method constructor blacklist <init>(Ljava/util/Enumeration;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/Enumeration$1;, "Ljava/util/Enumeration$1;"
    iput-object p1, p0, Ljava/util/Enumeration$1;->this$0:Ljava/util/Enumeration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 122
    .local p0, "this":Ljava/util/Enumeration$1;, "Ljava/util/Enumeration$1;"
    iget-object v0, p0, Ljava/util/Enumeration$1;->this$0:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 125
    .local p0, "this":Ljava/util/Enumeration$1;, "Ljava/util/Enumeration$1;"
    iget-object v0, p0, Ljava/util/Enumeration$1;->this$0:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
