.class public Landroid/health/connect/ApplicationInfoResponse;
.super Ljava/lang/Object;
.source "ApplicationInfoResponse.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mApplicationInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AppInfo;",
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
            "Landroid/health/connect/datatypes/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/AppInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Landroid/health/connect/ApplicationInfoResponse;->mApplicationInfos:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist getApplicationInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/AppInfo;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Landroid/health/connect/ApplicationInfoResponse;->mApplicationInfos:Ljava/util/List;

    return-object v0
.end method
