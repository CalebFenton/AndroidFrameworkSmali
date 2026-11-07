.class Landroid/net/NetworkStats$1;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/net/NetworkStats$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mIndex:I

.field final synthetic blacklist this$0:Landroid/net/NetworkStats;


# direct methods
.method constructor blacklist <init>(Landroid/net/NetworkStats;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 718
    iput-object p1, p0, Landroid/net/NetworkStats$1;->this$0:Landroid/net/NetworkStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStats$1;->mIndex:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 723
    iget v0, p0, Landroid/net/NetworkStats$1;->mIndex:I

    iget-object v1, p0, Landroid/net/NetworkStats$1;->this$0:Landroid/net/NetworkStats;

    invoke-static {v1}, Landroid/net/NetworkStats;->-$$Nest$fgetsize(Landroid/net/NetworkStats;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist next()Landroid/net/NetworkStats$Entry;
    .registers 4

    .line 728
    iget-object v0, p0, Landroid/net/NetworkStats$1;->this$0:Landroid/net/NetworkStats;

    iget v1, p0, Landroid/net/NetworkStats$1;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/NetworkStats$1;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 718
    invoke-virtual {p0}, Landroid/net/NetworkStats$1;->next()Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method
