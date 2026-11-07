.class public final Landroid/health/connect/FetchDataOriginsPriorityOrderResponse;
.super Ljava/lang/Object;
.source "FetchDataOriginsPriorityOrderResponse.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDataOriginsPriorityOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "dataOriginsPriorityOrder":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/DataOrigin;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Landroid/health/connect/FetchDataOriginsPriorityOrderResponse;->mDataOriginsPriorityOrder:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist getDataOriginsPriorityOrder()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Landroid/health/connect/FetchDataOriginsPriorityOrderResponse;->mDataOriginsPriorityOrder:Ljava/util/List;

    return-object v0
.end method
