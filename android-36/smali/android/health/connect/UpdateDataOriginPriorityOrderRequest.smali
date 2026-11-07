.class public final Landroid/health/connect/UpdateDataOriginPriorityOrderRequest;
.super Ljava/lang/Object;
.source "UpdateDataOriginPriorityOrderRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDataCategory:I

.field private final blacklist mDataOriginInOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;I)V
    .registers 3
    .param p2, "dataCategory"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;I)V"
        }
    .end annotation

    .line 42
    .local p1, "dataOriginInOrder":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/DataOrigin;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Landroid/health/connect/UpdateDataOriginPriorityOrderRequest;->mDataOriginInOrder:Ljava/util/List;

    .line 46
    iput p2, p0, Landroid/health/connect/UpdateDataOriginPriorityOrderRequest;->mDataCategory:I

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist getDataCategory()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/health/connect/UpdateDataOriginPriorityOrderRequest;->mDataCategory:I

    return v0
.end method

.method public whitelist getDataOriginInOrder()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Landroid/health/connect/UpdateDataOriginPriorityOrderRequest;->mDataOriginInOrder:Ljava/util/List;

    return-object v0
.end method
