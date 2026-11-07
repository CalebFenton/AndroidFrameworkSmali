.class Ljava/util/ImmutableCollections$Set12$1;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ImmutableCollections$Set12;->iterator()Ljava/util/Iterator;
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
.field private blacklist idx:I

.field final synthetic blacklist this$0:Ljava/util/ImmutableCollections$Set12;


# direct methods
.method constructor blacklist <init>(Ljava/util/ImmutableCollections$Set12;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/ImmutableCollections$Set12;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 834
    .local p0, "this":Ljava/util/ImmutableCollections$Set12$1;, "Ljava/util/ImmutableCollections$Set12$1;"
    iput-object p1, p0, Ljava/util/ImmutableCollections$Set12$1;->this$0:Ljava/util/ImmutableCollections$Set12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12$1;->this$0:Ljava/util/ImmutableCollections$Set12;

    invoke-static {v0}, Ljava/util/ImmutableCollections$Set12;->-$$Nest$fgete1(Ljava/util/ImmutableCollections$Set12;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x2

    :goto_14
    iput v0, p0, Ljava/util/ImmutableCollections$Set12$1;->idx:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 839
    .local p0, "this":Ljava/util/ImmutableCollections$Set12$1;, "Ljava/util/ImmutableCollections$Set12$1;"
    iget v0, p0, Ljava/util/ImmutableCollections$Set12$1;->idx:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 845
    .local p0, "this":Ljava/util/ImmutableCollections$Set12$1;, "Ljava/util/ImmutableCollections$Set12$1;"
    iget v0, p0, Ljava/util/ImmutableCollections$Set12$1;->idx:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 846
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/ImmutableCollections$Set12$1;->idx:I

    .line 847
    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetREVERSE()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12$1;->this$0:Ljava/util/ImmutableCollections$Set12;

    invoke-static {v0}, Ljava/util/ImmutableCollections$Set12;->-$$Nest$fgete1(Ljava/util/ImmutableCollections$Set12;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetEMPTY()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1b

    goto :goto_22

    :cond_1b
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12$1;->this$0:Ljava/util/ImmutableCollections$Set12;

    invoke-static {v0}, Ljava/util/ImmutableCollections$Set12;->-$$Nest$fgete1(Ljava/util/ImmutableCollections$Set12;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_28

    :cond_22
    :goto_22
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12$1;->this$0:Ljava/util/ImmutableCollections$Set12;

    invoke-static {v0}, Ljava/util/ImmutableCollections$Set12;->-$$Nest$fgete0(Ljava/util/ImmutableCollections$Set12;)Ljava/lang/Object;

    move-result-object v0

    :goto_28
    return-object v0

    .line 848
    :cond_29
    iget v0, p0, Ljava/util/ImmutableCollections$Set12$1;->idx:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_44

    .line 849
    iput v1, p0, Ljava/util/ImmutableCollections$Set12$1;->idx:I

    .line 850
    invoke-static {}, Ljava/util/ImmutableCollections;->-$$Nest$sfgetREVERSE()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12$1;->this$0:Ljava/util/ImmutableCollections$Set12;

    invoke-static {v0}, Ljava/util/ImmutableCollections$Set12;->-$$Nest$fgete1(Ljava/util/ImmutableCollections$Set12;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_43

    :cond_3d
    iget-object v0, p0, Ljava/util/ImmutableCollections$Set12$1;->this$0:Ljava/util/ImmutableCollections$Set12;

    invoke-static {v0}, Ljava/util/ImmutableCollections$Set12;->-$$Nest$fgete0(Ljava/util/ImmutableCollections$Set12;)Ljava/lang/Object;

    move-result-object v0

    :goto_43
    return-object v0

    .line 852
    :cond_44
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
